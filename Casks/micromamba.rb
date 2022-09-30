cask "micromamba" do
  arch arm: "arm64", intel: "64"

  version "0.26.0"
  sha256 arm:   "4989c0a5c94d0917d7e1941036ea3adf3da287c4e8249ac680fc41134210ea60",
         intel: "08b52c26ce58c5c0cb94ed420333a09897c48855ed5ed781f50a2ef7801349d7"

  url "https://micro.mamba.pm/api/micromamba/osx-#{arch}/#{version}",
      verified: "micro.mamba.pm/api/micromamba/"
  name "micromamba"
  desc "Tiny version of the Mamba cross-platform package manager"
  homepage "https://mamba.readthedocs.io/en/latest/installation.html#micromamba"

  livecheck do
    url "https://api.anaconda.org/release/conda-forge/micromamba/latest"
    regex(%r{micromamba/(\d+(?:\.\d+)+)/osx-#{arch}/}i)
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
