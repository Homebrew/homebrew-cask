cask "miniconda" do
  arch arm: "arm64", intel: "x86_64"

  version "py313_25.3.1-1"
  sha256 arm:   "d54b27ed4a6d3c31fedbad6f9f488377702196b0d8d89854e8e7d01f701f225b",
         intel: "614c455b74d85abe98c2d0fb9b00628bbf2d48932ea4b49ec05b5c4bee7e9239"

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
