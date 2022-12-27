cask "jedit-omega" do
  on_el_capitan :or_older do
    version "1.32"
    sha256 "251697fe6b76419b2cef41a89a2cb7d2e3f8caab0bc1ae82aed6c14a366fdad9"
  end
  on_sierra :or_newer do
    version "2.49"
    sha256 "c31154aec59a430b4e0b87158f61a04e810f004b6ad70fee433711a8db6a5cd0"
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
