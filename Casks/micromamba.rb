cask "micromamba" do
  arch arm: "arm64", intel: "64"

  version "1.3.0,0"
  sha256 arm:   "953834727eb3f9ab24f22d87675c8e27fb1ed4fe33890095bb39d4246dfe67a6",
         intel: "15bee7d131a4b63af3929877062813ad77c649a8844e08b081347ce0b7f45510"

  url "https://api.anaconda.org/download/conda-forge/micromamba/#{version.csv.first}/osx-#{arch}/micromamba-#{version.csv.first}-#{version.csv.second}.tar.bz2",
      verified: "api.anaconda.org/download/conda-forge/micromamba/"
  name "micromamba"
  desc "Tiny version of the Mamba cross-platform package manager"
  homepage "https://mamba.readthedocs.io/en/latest/installation.html#micromamba"

  livecheck do
    url "https://api.anaconda.org/release/conda-forge/micromamba/latest"
    regex(%r{osx-#{arch}/micromamba-(\d+(?:\.\d+)+)-(\d)\.t}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  binary "bin/micromamba"

  caveats <<~EOS
    Please run the following to setup your shell:
      #{HOMEBREW_PREFIX}/bin/micromamba shell init -s <your-shell> -p ~/micromamba
    and restart your terminal.

    For more information, see:
      https://mamba.readthedocs.io/en/latest/installation.html#micromamba
  EOS
end
