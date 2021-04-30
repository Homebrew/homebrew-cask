cask "miniforge" do
  version "4.10.1-0"

  if Hardware::CPU.intel?
    sha256 "e239925d385a28275e8af199e6ceff0936165698fc298ab8c70c9c793d554827"
    url "https://github.com/conda-forge/miniforge/releases/download/#{version}/Miniforge3-#{version}-MacOSX-x86_64.sh"

    installer script: {
      executable: "Miniforge3-#{version}-MacOSX-x86_64.sh",
      args:       ["-b", "-p", "#{caskroom_path}/base"],
    }
  else
    sha256 "3a9aabd6b3f13d5d536086173229163c7691b18272722ab4e8438b54c08db58c"
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
