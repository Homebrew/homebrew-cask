cask "micromamba" do
  arch arm: "arm64", intel: "64"

  version "0.27.0,2"
  sha256 arm:   "cefcbab3c6e5b1cf2157211af64a9c054bbf842e632f48cfd14889b11c3f09c3",
         intel: "32eb83ad09f9c97c230793ef5572ee8cbcf425bcc3683b0035303867c11025aa"

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
