cask "font-free-mono-tengwar" do
  version "2013-07-21"
  sha256 "11a33522a6a7aa43120f0e9f98862d922a89228ed762738809132e3b26784907"

  url "https://downloads.sourceforge.net/freetengwar/FreeMonoTengwar.#{version}.zip"
  name "FreeMonoTengwar"
  desc "Unicode tengwar monospaced font"
  homepage "https://freetengwar.sourceforge.net/freemonotengwar.html"

  livecheck do
    url "https://sourceforge.net/projects/freetengwar/rss?path=/TengwarFont"
    regex(/FreeMonoTengwar\.(\d+(?:-\d+)*)/)
  end

  font "FreeMonoTengwar.#{version}/FreeMonoTengwar-embedding.ttf"
  font "FreeMonoTengwar.#{version}/FreeMonoTengwar.ttf"

  # No zap stanza required
end
