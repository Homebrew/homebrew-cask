cask "micromamba" do
  arch arm: "arm64", intel: "64"

  version "1.0.0,1"
  sha256 arm:   "ffb87b3923a01f22d299d21f8da2b57b0a22bf1be4f59f634f449ffa431d7d18",
         intel: "2141288a06b520c81724eb1fad2e99395133c7d64ca9c776ae8d6ccc7edfd8e0"

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
