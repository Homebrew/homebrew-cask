cask "miniforge" do
  version "3-4.10.0-0"

  if Hardware::CPU.intel?
    sha256 "5813f9eadda46f655fdcf2daee10a8586ba067bb453551466fb66168268ea31b"
    url "https://github.com/conda-forge/miniforge/releases/download/4.10.0-0/Miniforge3-4.10.0-0-MacOSX-arm64.sh"

    installer script: {
      executable: "Miniforge3-#{version}-MacOSX-x86_64.sh",
      args:       ["-b", "-p", "#{caskroom_path}/base"],
    }
  else
    sha256 "f939014048e40d127082c41b66bb98760fa2ce586b0b0dc043f6a38c78198e78"
    url "https://github.com/conda-forge/miniforge/releases/download/#{version}/Miniforge3-#{version}-MacOSX-arm64.sh"

    installer script: {
      executable: "Miniforge3-#{version}-MacOSX-arm64.sh",
      args:       ["-b", "-p", "#{caskroom_path}/base"],
    }
  end

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
