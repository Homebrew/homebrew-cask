cask "mambaforge" do
  arch arm: "arm64", intel: "x86_64"

  version "23.3.1-1"
  sha256 arm:   "1b07c1a231a18f21da6aac1abe87dd173ce141ce7612f06eab962eb9f8353a27",
         intel: "ee707e117c4eb54b7a02a0ba1b2fc2b60325ce6f767e76274e45dbe7743efa7d"

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
