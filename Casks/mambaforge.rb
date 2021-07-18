cask "mambaforge" do
  version "4.10.3-2"

  if Hardware::CPU.intel?
    sha256 "cbd143702ed1d1176fa3b480eca1ec6eb0e32a2c9eab7134877ff32dabae91e0"
    url "https://github.com/conda-forge/miniforge/releases/download/#{version}/Mambaforge-#{version}-MacOSX-x86_64.sh"

    installer script: {
      executable: "Mambaforge-#{version}-MacOSX-x86_64.sh",
      args:       ["-b", "-p", "#{caskroom_path}/base"],
    }
  else
    sha256 "49132e1e2593b4ab3762ff238e76dfc5f5bd670fe23c622c5051607709f93a0b"
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
