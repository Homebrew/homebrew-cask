cask "miniforge" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "4.10.3-8"

  url "https://github.com/conda-forge/miniforge/releases/download/#{version}/Miniforge3-#{version}-MacOSX-#{arch}.sh"
  if Hardware::CPU.intel?
    sha256 "9c123f45da81878b3b3f221dcb7595f6420cac0310235316a7deba93cf12bbe3"
  else
    sha256 "ed1f245d8effb463c9bd5d1cde034e7e291684e0668885a87deb34303dafced5"
  end

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
