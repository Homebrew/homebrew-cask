cask "micromamba" do
  arch arm: "arm64", intel: "64"

  version "0.25.1"
  sha256 arm:   "b39fb2f9f2bed41c5ad885f41f49ba751a4ba5ee01ee96ca8293a84aa603d1b2",
         intel: "bd80ed9cb39748a40ae7dfd124aa18e453bf4793e281daf687710c81272e8be1"

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
      micromamba shell init -s <your-shell> -p ~/micromamba
    and restart your terminal.

    For more information, see:
      https://mamba.readthedocs.io/en/latest/installation.html#micromamba
  EOS
end
