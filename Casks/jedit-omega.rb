cask "jedit-omega" do
  if MacOS.version <= :el_capitan
    version "1.32"
    sha256 "251697fe6b76419b2cef41a89a2cb7d2e3f8caab0bc1ae82aed6c14a366fdad9"
  else
    version "2.49"
    sha256 "9c583f2861c6e3d2bcfb855cbfdcec35551db20d20fa1c348b57e60a9601d33c"
  end

  url "http://www.artman21.org/download/JeditOmega#{version.no_dots}.dmg",
      verified: "artman21.org/"
  name "Jedit Ω"
  desc "Text editor"
  homepage "https://www.artman21.com/en/sparkle/jeditomega.html"

  livecheck do
    url "https://www.artman21.com/en/sparkle/jedit-download.html"
    regex(/Rev[._-](\d+(?:\.\d+)+)/i)
  end

  app "Jedit Ω.app"
end
