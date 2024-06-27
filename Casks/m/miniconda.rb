cask "miniconda" do
  arch arm: "arm64", intel: "x86_64"

  version "py312_24.5.0-0"
  sha256 arm:   "12e678b8156aea69a132568b6176a019c7a1ba753ddf5caedf086d3c5460fe92",
         intel: "b1c87c8334ea878d30a9976c1860b1004e6d55bdec5228089fec40be81156363"

  url "https://repo.anaconda.com/miniconda/Miniconda3-#{version}-MacOSX-#{arch}.sh",
      verified: "repo.anaconda.com/miniconda/"
  name "Miniconda"
  desc "Minimal installer for conda"
  homepage "https://docs.conda.io/en/latest/miniconda.html"

  livecheck do
    url "https://repo.anaconda.com/miniconda/"
    strategy do |content|
      sha256 = content.scan(/>Miniconda3-latest-MacOSX-#{arch}\.sh<.{,99}>(\w{64})</im).first.first
      content.scan(/>Miniconda3-(py\d+_[\d.-]+)-MacOSX-#{arch}\.sh<.{,99}>#{sha256}</im).first.first
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
