cask "miniconda" do
  arch arm: "arm64", intel: "x86_64"

  version "py311_23.5.0-3"
  sha256 arm:   "c4ce7311d2d1c729bf8d98e6d5aa2581ce0b08a1480985e63efaf8529b2fc6ca",
         intel: "2503d9e852fcaf85adca825bde84bdc297b118fd2c14316e4f27a93a190a7bdd"

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
  EOS
end
