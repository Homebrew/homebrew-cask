cask "mambaforge" do
  arch arm: "arm64", intel: "x86_64"

  version "23.1.0-1"
  sha256 arm:   "e519a74734f963c2fe744557115f8862fa573dea0de581b0b4a22cbd31127448",
         intel: "e33f9d426d62759e7c4adf5431fdd91a23df71732b5e22b699cace52255e8196"

  url "https://github.com/conda-forge/miniforge/releases/download/#{version}/Mambaforge-#{version}-MacOSX-#{arch}.sh"
  name "mambaforge"
  desc "Minimal installer for conda with preinstalled support for Mamba"
  homepage "https://github.com/conda-forge/miniforge"

  livecheck do
    url :url
    regex(%r{href=.*?/tag/v?(\d+(?:[._-]\d+)+)["' >]}i)
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: [
    "miniconda",
    "miniforge",
  ]
  container type: :naked

  installer script: {
    executable: "Mambaforge-#{version}-MacOSX-#{arch}.sh",
    args:       ["-b", "-p", "#{caskroom_path}/base"],
  }
  binary "#{caskroom_path}/base/condabin/conda"
  binary "#{caskroom_path}/base/condabin/mamba"

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
