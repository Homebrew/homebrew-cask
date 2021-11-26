cask "miniconda" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"
  
  if Hardware::CPU.intel?
    version "py39_4.10.3"
    sha256 "786de9721f43e2c7d2803144c635f5f6e4823483536dc141ccd82dbb927cd508"
  else
    version "py38_4.10.1"
    sha256 "4ce4047065f32e991edddbb63b3c7108e7f4534cfc1efafc332454a414deab58"
  end
  
  url "https://repo.anaconda.com/miniconda/Miniconda3-#{version}-MacOSX-#{arch}.sh",
      verified: "repo.anaconda.com/miniconda/"
  name "Continuum Analytics Miniconda"
  desc "Minimal installer for conda"
  homepage "https://conda.io/miniconda.html"

  # This regex restricts matching to a specific Python version. This will need
  # to be updated when the prefix changes in the latest version at the top of:
  # https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-#{arch}.sh
  livecheck do
    if Hardware::CPU.intel?
      url "https://repo.anaconda.com/miniconda/"
      regex(/>\s*Miniconda3-(py39[._-]\d+(?:\.\d+)+)-MacOSX-#{arch}\.sh\s*</i)
    else
      url "https://repo.anaconda.com/miniconda/"
      regex(/>\s*Miniconda3-(py38[._-]\d+(?:\.\d+)+)-MacOSX-#{arch}\.sh\s*</i)
    end
  end

  auto_updates true
  conflicts_with cask: "miniforge"
  container type: :naked

  installer script: {
    executable: "Miniconda3-#{version}-MacOSX-#{arch}.sh",
    args:       ["-b", "-p", "#{caskroom_path}/base"],
  }
  binary "#{caskroom_path}/base/condabin/conda"

  uninstall delete: "#{caskroom_path}/base"

  zap trash: [
    "~/.condarc",
    "~/.conda",
    "~/.continuum",
  ]

  caveats <<~EOS
    Please run the following to setup your shell:
      conda init "$(basename "${SHELL}")"
  EOS
end
