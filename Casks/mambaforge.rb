cask "mambaforge" do
  arch arm: "arm64", intel: "x86_64"

  version "22.11.1-4"
  sha256 arm:   "a551be4b416a05f31ba3605f78694f1e21559533744c45ded0c4bfeb7666f317",
         intel: "0f0f746330259c6f9c3678fdbdb6195dddad4b9bac921a6de07c62a60234ad8d"

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
