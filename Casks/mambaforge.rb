cask "mambaforge" do
  arch arm: "arm64", intel: "x86_64"

  version "23.1.0-3"
  sha256 arm:   "75368b03ac79b170537748a600ea847e35d83a4fef9ea438c34217b7e28b9330",
         intel: "7e4dd16067bbb4ab41616f3378d0c788302818c7fe13806fe8e97707471c9004"

  url "https://github.com/conda-forge/miniforge/releases/download/#{version}/Mambaforge-#{version}-MacOSX-#{arch}.sh"
  name "mambaforge"
  desc "Minimal installer for conda with preinstalled support for Mamba"
  homepage "https://github.com/conda-forge/miniforge"

  livecheck do
    url :url
    regex(/v?(\d+(?:[._-]\d+)+)/i)
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
