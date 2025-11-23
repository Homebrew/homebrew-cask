cask "font-bravura" do
  version "1.392"
  sha256 "42d18929af4cbdd13784a51c509175d4458010332d238310b4d4cd962e2bc1db"

  url "https://github.com/steinbergmedia/bravura/archive/refs/tags/bravura-#{version}.tar.gz"
  name "Bravura"
  homepage "https://github.com/steinbergmedia/bravura"

  # Upstream may mark a release that is described as the current release on the first-party
  # page as a "pre-release" on GitHub, so we have to check the first-party page.
  livecheck do
    url "https://www.smufl.org/fonts/"
    regex(%r{href=.*?/bravura/releases/tag/bravura[._-]v?(\d+(?:\.\d+)+)"}i)
  end

  font "bravura-bravura-#{version}/redist/otf/Bravura.otf"
  font "bravura-bravura-#{version}/redist/otf/BravuraText.otf"

  # No zap stanza required
end
