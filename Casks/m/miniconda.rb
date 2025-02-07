cask "miniconda" do
  arch arm: "arm64", intel: "x86_64"

  version "py312_25.1.1-0"
  sha256 arm:   "24821d2c87598ae0f8e697e612cdf41d0dbc9ae563cae8aacd878d50d1a86e1e",
         intel: "65f91c564abced759ce7fca099239b7ed4ae9835cb4b64a11923cd3b5f57f5f1"

  url "https://repo.anaconda.com/miniconda/Miniconda3-#{version}-MacOSX-#{arch}.sh",
      verified: "repo.anaconda.com/miniconda/"
  name "Miniconda"
  desc "Minimal installer for conda"
  homepage "https://docs.conda.io/en/latest/miniconda.html"

  livecheck do
    url "https://repo.anaconda.com/miniconda/"
    strategy :page_match do |page|
      sha256 = page.scan(/>Miniconda3-latest-MacOSX-#{arch}\.sh<.{,99}>(\w{64})</im).first.first
      page.scan(/>Miniconda3-(py\d+_[\d.-]+)-MacOSX-#{arch}\.sh<.{,99}>#{sha256}</im).first.first
    end
  end

  auto_updates true
  conflicts_with cask: [
    "mambaforge",
    "miniforge",
  ]
  container type: :naked

  installer script: {
    executable: "Miniconda3-#{version}-MacOSX-#{arch}.sh",
    args:       ["-b", "-p", "#{caskroom_path}/base"],
  }
  binary "#{caskroom_path}/base/condabin/conda"

  uninstall delete: "#{caskroom_path}/base"

  zap trash: [
    "~/.conda",
    "~/.condarc",
    "~/.continuum",
  ]

  caveats <<~EOS
    Please run the following to setup your shell:
      conda init "$(basename "${SHELL}")"

    Alternatively, manually add the following to your shell init:
      eval "$(conda "shell.$(basename "${SHELL}")" hook)"
  EOS
end
