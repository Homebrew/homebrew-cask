cask "miniconda" do
  version "py39_4.10.3"
  sha256 "786de9721f43e2c7d2803144c635f5f6e4823483536dc141ccd82dbb927cd508"

  url "https://repo.anaconda.com/miniconda/Miniconda3-#{version}-MacOSX-x86_64.sh",
      verified: "repo.anaconda.com/miniconda/"
  name "Continuum Analytics Miniconda"
  desc "Minimal installer for conda"
  homepage "https://conda.io/miniconda.html"

  # This regex restricts matching to a specific Python version. This will need
  # to be updated when the prefix changes in the latest version at the top of:
  # https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
  livecheck do
    url "https://repo.anaconda.com/miniconda/"
    regex(/>\s*Miniconda3-(py39[._-]\d+(?:\.\d+)+)-MacOSX-x86_64\.sh\s*</i)
  end

  auto_updates true
  conflicts_with cask: "miniforge"
  container type: :naked

  installer script: {
    executable: "Miniconda3-#{version}-MacOSX-x86_64.sh",
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
