cask "mambaforge" do
  arch arm: "arm64", intel: "x86_64"

  version "23.1.0-0"
  sha256 arm:   "538ea7a9d24cad041a2b7fd71cf49f433137f9b4bc8e11408f2285e99cf79f96",
         intel: "61d95ff7a7bbe465a416f5ad43460fb1a50e621ed15233cc4e3441a03bb48cd4"

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
