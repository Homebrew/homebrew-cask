cask "jedit-omega" do
  on_el_capitan :or_older do
    version "1.32"
    sha256 "251697fe6b76419b2cef41a89a2cb7d2e3f8caab0bc1ae82aed6c14a366fdad9"
  end
  on_sierra :or_newer do
    version "3.03"
    sha256 "b281742c283ec84fe2578a5aaf4215ba263474305f11e6cca41aeb9c4f9910b4"
  end

  url "https://artman21.site/JeditOmega#{version.no_dots}.pkg",
      verified: "artman21.site/"
  name "Jedit Ω"
  desc "Text editor"
  homepage "https://www.artman21.com/en/sparkle/jeditomega.html"

  livecheck do
    url "https://www.artman21.com/en/sparkle/jedit-download.html"
    regex(/Rev[._-](\d+(?:\.\d+)+)/i)
  end

  app "Jedit Ω.app"
end
