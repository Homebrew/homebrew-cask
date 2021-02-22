cask "miniforge" do
  version "4.9.2-7"

  if Hardware::CPU.intel?
    sha256 "5813f9eadda46f655fdcf2daee10a8586ba067bb453551466fb66168268ea31b"
    url "https://github.com/conda-forge/miniforge/releases/download/#{version}/Miniforge3-#{version}-MacOSX-x86_64.sh"

    installer script: {
      executable: "Miniforge3-#{version}-MacOSX-x86_64.sh",
      args:       ["-b", "-p", "#{caskroom_path}/base"],
    }
  else
    sha256 "6778b36e1a4f79fc28609019eb00719e5b4253fd4dc8dfd24d17882d378aea5a"
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
