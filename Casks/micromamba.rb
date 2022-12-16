cask "micromamba" do
  arch arm: "arm64", intel: "64"

  version "1.1.0,0"
  sha256 arm:   "60db09ba82e9680639e9d4d710f3eb33c2ec6c3c736206b8c2301f9ff7345193",
         intel: "9d81b30827c6c3c71d08dc617b0979a7d511178875af559660c82fee0c990fd2"

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
