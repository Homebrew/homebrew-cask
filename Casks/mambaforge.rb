cask "mambaforge" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "4.10.3-7"

  url "https://github.com/conda-forge/miniforge/releases/download/#{version}/Mambaforge-#{version}-MacOSX-#{arch}.sh"
  if Hardware::CPU.intel?
    sha256 "94ed8b8a647f48a815590958217aabebd4a3e3e10edaf2c5772d50a75727773a"
  else
    sha256 "49c7ba06fe663c634929d5d85b4c06840f4ab9844744be691aab90848c52444e"
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

  installer script: {
    executable: "Mambaforge-#{version}-MacOSX-#{arch}.sh",
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
