cask "mambaforge" do
  arch arm: "arm64", intel: "x86_64"

  version "22.11.1-0"
  sha256 arm:   "67e3cf19b0aa21c5a890dde5545265c51792c6c495939eb26dfccdc6d3677b36",
         intel: "3067c707b3f297445fc2c9b66752a6320244d8a5589488ece8f2265c45230318"

  url "https://github.com/conda-forge/miniforge/releases/download/#{version}/Mambaforge-#{version}-MacOSX-#{arch}.sh"
  name "mambaforge"
  desc "Minimal installer for conda with preinstalled support for Mamba"
  homepage "https://github.com/conda-forge/miniforge"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/tag/v?(\d+(?:[._-]\d+)+)["' >]}i)
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
