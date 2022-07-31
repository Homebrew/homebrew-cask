cask "miniforge" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "4.13.0-1"

  if Hardware::CPU.intel?
    sha256 "9996677f0ca0bfa6399e9a5688556bfaff544389ea123e2ac6e6252d3a1d0658"
  else
    sha256 "57bef67a4c80bfef04223eb76ee1b49b1bdfd5eeb46ebcf49e65d6c308c84a98"
  end

  url "https://github.com/conda-forge/miniforge/releases/download/#{version}/Miniforge3-#{version}-MacOSX-#{arch}.sh"
  name "miniforge"
  desc "Minimal installer for conda specific to conda-forge"
  homepage "https://github.com/conda-forge/miniforge"

  livecheck do
    url :homepage
    strategy :github_latest
    regex(%r{href=.*?/tag/v?(\d+(?:[.-]\d+)+)["' >]}i)
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
