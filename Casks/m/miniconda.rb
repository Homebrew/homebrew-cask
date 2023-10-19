cask "miniconda" do
  arch arm: "arm64", intel: "x86_64"

  version "py311_23.9.0-0"
  sha256 arm:   "4215f6fc572207f73a8f64692b4936b1952051f4cd620eec2ebd1f946e98b886",
         intel: "4b60eb49cf8fea6272bd2060878ab02cbab187dffd2fd732685c3c92a60b62ed"

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
