cask "miniconda" do
  arch arm: "arm64", intel: "x86_64"

  version "py39_4.12.0"
  sha256 arm:   "4bd112168cc33f8a4a60d3ef7e72b52a85972d588cd065be803eb21d73b625ef",
         intel: "007bae6f18dc7b6f2ca6209b5a0c9bd2f283154152f82becf787aac709a51633"

  url "https://repo.anaconda.com/miniconda/Miniconda3-#{version}-MacOSX-#{arch}.sh",
      verified: "repo.anaconda.com/miniconda/"
  name "Continuum Analytics Miniconda"
  desc "Minimal installer for conda"
  homepage "https://conda.io/miniconda.html"

  # This regex restricts matching to a specific Python version. This will need
  # to be updated when the prefix changes in the latest version at the top of:
  # https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-#{arch}.sh
  livecheck do
    url "https://repo.anaconda.com/miniconda/"
    regex(/>\s*Miniconda3-(py39[._-]\d+(?:\.\d+)+)-MacOSX-#{arch}\.sh\s*</i)
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
