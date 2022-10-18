cask "micromamba" do
  arch arm: "arm64", intel: "64"

  version "0.27.0"
  sha256 arm:   "4514ca08786692a7b4619fa7c215830e5b6cc6b7077b1c463f4a54b5c82b04e4",
         intel: "3c1a5ebb151668ce683fb74073bce5e01740663d5917769adb6d2703441b4531"

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
