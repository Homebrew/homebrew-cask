cask "miniforge" do
  arch arm: "arm64", intel: "x86_64"

  version "23.1.0-0"
  sha256 arm:   "0aece610f84e023d062e1c88bfc6033dd60101ec9b79819f87fc1b009263989b",
         intel: "a9665fec3c8c1abd572666d4c49d512b3c27082324a1713ca2fde6efb8ce7856"

  url "https://github.com/conda-forge/miniforge/releases/download/#{version}/Miniforge3-#{version}-MacOSX-#{arch}.sh"
  name "miniforge"
  desc "Minimal installer for conda specific to conda-forge"
  homepage "https://github.com/conda-forge/miniforge"

  livecheck do
    url :homepage
    regex(%r{href=.*?/tag/v?(\d+(?:[.-]\d+)+)["' >]}i)
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "miniconda"
  container type: :naked

  installer script: {
    executable: "Miniforge3-#{version}-MacOSX-#{arch}.sh",
    args:       ["-b", "-p", "#{caskroom_path}/base"],
  }
  binary "#{caskroom_path}/base/condabin/conda"

  uninstall delete: "#{caskroom_path}/base"

  zap trash: [
    "~/.condarc",
    "~/.conda",
  ]

  caveats <<~EOS
    Please run the following to setup your shell:
      conda init "$(basename "${SHELL}")"
  EOS
end
