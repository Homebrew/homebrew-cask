cask "font-tengwar-telcontar" do
  version "008"
  sha256 "f88780510e5c14f66e252fabce5d58febc7bec962d5c17f21ac82002ce85b925"

  url "https://downloads.sourceforge.net/freetengwar/TengwarTelcontar.#{version}.zip"
  name "Tengwar Telcontar"
  homepage "https://freetengwar.sourceforge.net/tengtelc.html"

  livecheck do
    url "https://sourceforge.net/projects/freetengwar/rss?path=/TengwarFont"
    regex(%r{url=.*?/TengwarTelcontar[._-]?v?(\d+(?:\.\d+)*)\.zip}i)
  end

  font "tengtelc.ttf"
  font "tengtelcb.ttf"

  # No zap stanza required
end
