cask "font-bravura" do
  version "1.482"
  sha256 "b90867e2835cae1e15296213c32b8391dcaaa812b228a0519eeedfaf2c85add5"

  url "https://github.com/steinbergmedia/bravura/archive/refs/tags/bravura-#{version}.tar.gz"
  name "Bravura"
  homepage "https://github.com/steinbergmedia/bravura"

  # We check the SMuFL fonts page as the version it lists as current may be
  # marked as "pre-release" on GitHub.
  livecheck do
    url "https://www.smufl.org/fonts/"
    regex(%r{href=.*?/bravura/releases/tag/bravura[._-]v?(\d+(?:\.\d+)+)["' >]}i)
  end

  font "bravura-bravura-#{version}/redist/otf/Bravura.otf"
  font "bravura-bravura-#{version}/redist/otf/BravuraText.otf"

  # No zap stanza required
end
