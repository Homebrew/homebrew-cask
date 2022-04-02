cask "miniforge" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "4.12.0-0"

  if Hardware::CPU.intel?
    sha256 "3bfcd52dd1acafc712b6fb042d4b019c6f09ea3ba62710f722f4e9ebcde7f67c"
  else
    sha256 "e52cb92d620c5a408afef9ac8b5d2e964e2c72211c69cc41a2bb4d6af0a26001"
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
