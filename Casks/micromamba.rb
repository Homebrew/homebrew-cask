cask "micromamba" do
  arch arm: "arm64", intel: "64"

  version "1.2.0,1"
  sha256 arm:   "91fc0681808520c20d7af59f310a34316e12e84b9279b48afac0f20084bec8f0",
         intel: "f426ea774765b52dccf2edbb8b261fded226b903a9e925c63807850733ca19b7"

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
