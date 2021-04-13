cask "miniforge" do
  version "4.10.0-0"

  if Hardware::CPU.intel?
    sha256 "5aa5b5edd0260d92e27217da263db321d0dfc52b5ed66d3ad1a59a46595ca40e"
    url "https://github.com/conda-forge/miniforge/releases/download/#{version}/Miniforge3-#{version}-MacOSX-x86_64.sh"

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
