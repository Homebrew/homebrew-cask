cask "miniforge" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "4.10.3-9"

  url "https://github.com/conda-forge/miniforge/releases/download/#{version}/Miniforge3-#{version}-MacOSX-#{arch}.sh"
  if Hardware::CPU.intel?
    sha256 "86ba79bba787ea943d11810b8f7b393a3ce5d421cd31528436c3ffa17eb062ed"
  else
    sha256 "68196959ddc966046935ab80fb0fda73675914e55e96764e0358f7eb4a4e7714"
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
