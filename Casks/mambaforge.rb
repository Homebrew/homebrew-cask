cask "mambaforge" do
  version "4.10.1-4"

  if Hardware::CPU.intel?
    sha256 "b8a849f0cf2923940a2fcda47a5f7181fa855dfc5c1b59134ac7e8b3735e0f71"
    url "https://github.com/conda-forge/miniforge/releases/download/#{version}/Mambaforge-#{version}-MacOSX-x86_64.sh"

    installer script: {
      executable: "Mambaforge-#{version}-MacOSX-x86_64.sh",
      args:       ["-b", "-p", "#{caskroom_path}/base"],
    }
  else
    sha256 "90a75e9fa9fedfe991a9eaf65cae62ef5cdb6a8fda9375654f31b3b6cf99ef06"
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
