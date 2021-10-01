cask "mambaforge" do
  version "4.10.3-5"

  if Hardware::CPU.intel?
    sha256 "547823784a2b79641f29d06f70f74ae25775eec1680c6cca14888c4907441f5c"
    url "https://github.com/conda-forge/miniforge/releases/download/#{version}/Mambaforge-#{version}-MacOSX-x86_64.sh"

    installer script: {
      executable: "Mambaforge-#{version}-MacOSX-x86_64.sh",
      args:       ["-b", "-p", "#{caskroom_path}/base"],
    }
  else
    sha256 "1c7517e204814f7227ef0d2e0fbf95b43f6afae978e882cd017779e31f8b26cb"
    url "https://github.com/conda-forge/miniforge/releases/download/#{version}/Mambaforge-#{version}-MacOSX-arm64.sh"

    installer script: {
      executable: "Mambaforge-#{version}-MacOSX-arm64.sh",
      args:       ["-b", "-p", "#{caskroom_path}/base"],
    }
  end

  name "mambaforge"
  desc "Minimal installer for conda with preinstalled support for Mamba"
  homepage "https://github.com/conda-forge/miniforge"

  auto_updates true
  conflicts_with cask: [
    "miniconda",
    "miniforge",
  ]
  container type: :naked

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
