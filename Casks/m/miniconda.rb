cask "miniconda" do
  arch arm: "arm64", intel: "x86_64"

  version "py311_23.10.0-1"
  sha256 arm:   "5043144d7eaea2286e30d091b62fcf50f7ed983b092230e56c370b592e7a57f2",
         intel: "8c50faa3880fdef96967477af09d41c52332998beeee7ef8116c79d4f5023d72"

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
