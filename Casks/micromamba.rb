cask "micromamba" do
  arch arm: "arm64", intel: "64"

  version "0.25.0"

  on_intel do
    sha256 "8f9aef1988c08ed7d65d2d00c4115bea881c64adcade87e6ea26db9fa8eeff08"
  end
  on_arm do
    sha256 "aabfefc4c4902930c67cd50a0c09b368bb27d4c6f0bd293d5068a4a6a7243e13"
  end

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
