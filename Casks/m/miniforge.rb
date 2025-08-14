cask "miniforge" do
  arch arm: "arm64", intel: "x86_64"

  version "25.3.1-0"
  sha256 arm:   "d9eabd1868030589a1d74017b8723b01cf81b5fec1b9da8021b6fa44be7bbeae",
         intel: "6c09a3550bb65bdb6d3db6f6c2b890b987b57189f3b71c67a5af49943d2522e8"

  url "https://github.com/conda-forge/miniforge/releases/download/#{version}/Miniforge3-#{version}-MacOSX-#{arch}.sh"
  name "miniforge"
  desc "Minimal installer for conda specific to conda-forge"
  homepage "https://github.com/conda-forge/miniforge"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  
  conflicts_with cask: [
    "mambaforge",
    "miniconda",
  ]
  container type: :naked

  installer script: {
    executable: "Miniforge3-#{version}-MacOSX-#{arch}.sh",
    args:       ["-b", "-p", "#{caskroom_path}/base"],
  }
  binary "#{caskroom_path}/base/condabin/conda"
  binary "#{caskroom_path}/base/condabin/mamba"

  uninstall rmdir: "#{caskroom_path}/base"

  zap trash: [
    "~/.conda",
    "~/.condarc",
  ]

  caveats <<~EOS
    To initialize your shell, run:
      conda init "$(basename "${SHELL}")"
  EOS
end
