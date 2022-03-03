cask "miniforge" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "4.11.0-4"

  if Hardware::CPU.intel?
    sha256 "5f0019f6f671f3a41352b53ee7001dfbc6d7806a62d3691159c60d493ed82ea2"
  else
    sha256 "7b3e3c29f8cc4a6a13e53f20e155f7bd30216e071c6028f699582b23bff06e60"
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
