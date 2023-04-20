cask "miniforge" do
  arch arm: "arm64", intel: "x86_64"

  version "23.1.0-1"
  sha256 arm:   "147ee54acc6ebd5148d712945fed29c4e01a247528f28fd958615f63bfc75687",
         intel: "7c737a78918164c5a07a6489b8429f9788aadb58536434c0d34316e7686dc424"

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
