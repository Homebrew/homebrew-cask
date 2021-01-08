cask "miniforge" do
  version "4.9.2-5"

  if Hardware::CPU.intel?
    sha256 "a33aca4dd6686b1dba790b224c9e686d7e08c86e6074379194f3bde478d883ed"
    url "https://github.com/conda-forge/miniforge/releases/download/#{version}/Miniforge3-#{version}-MacOSX-x86_64.sh"

    installer script: {
      executable: "Miniforge3-#{version}-MacOSX-x86_64.sh",
      args:       ["-b", "-p", "#{caskroom_path}/base"],
    }
  else
    sha256 "c73d84a842a0b56ee546e6d180515ed660394eb22ce61864f88bc3ddd0b034c7"
    url "https://github.com/conda-forge/miniforge/releases/download/#{version}/Miniforge3-#{version}-MacOSX-arm64.sh"

    installer script: {
      executable: "Miniforge3-#{version}-MacOSX-arm64.sh",
      args:       ["-b", "-p", "#{caskroom_path}/base"],
    }
  end

  appcast "https://github.com/conda-forge/miniforge/releases.atom"
  name "miniforge"
  desc "Minimal installer for conda specific to conda-forge"
  homepage "https://github.com/conda-forge/miniforge"

  auto_updates true
  conflicts_with cask: "miniconda"
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
