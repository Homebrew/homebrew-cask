cask "miniconda" do
  arch arm: "arm64", intel: "x86_64"

  version "py313_25.5.1-1"
  sha256 arm:   "2ec6f7981770b3396a9ab426e07ac8ef5b12b4393aa2e4bcc984376fe3aa327e",
         intel: "4152f260040d452bfe00c67ac6b429aec7ff3b98f62bab8abe4c468e98e51891"

  url "https://repo.anaconda.com/miniconda/Miniconda3-#{version}-MacOSX-#{arch}.sh"
  name "Miniconda"
  desc "Minimal installer for conda"
  homepage "https://www.anaconda.com/docs/getting-started/miniconda/main"

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
