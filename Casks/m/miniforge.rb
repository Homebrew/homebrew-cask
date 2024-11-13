cask "miniforge" do
  arch arm: "arm64", intel: "x86_64"

  version "24.9.2-0"
  sha256 arm:   "b2ee4415bce51895b74b99de6e83ac0f737fd968052b5b49f79e05b292220084",
         intel: "22b9eab7508d464c7d270883e733496beef25520d96c8383b4683f0122ae0222"

  url "https://github.com/conda-forge/miniforge/releases/download/#{version}/Miniforge3-#{version}-MacOSX-#{arch}.sh"
  name "miniforge"
  desc "Minimal installer for conda specific to conda-forge"
  homepage "https://github.com/conda-forge/miniforge"

  livecheck do
    url :homepage
    regex(/v?(\d+(?:[.-]\d+)+)/i)
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

  uninstall delete: "#{caskroom_path}/base"

  zap trash: [
    "~/.conda",
    "~/.condarc",
  ]

  caveats <<~EOS
    Please run the following to setup your shell:
      conda init "$(basename "${SHELL}")"
  EOS
end
