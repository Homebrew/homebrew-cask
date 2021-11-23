cask "jedit-omega" do
  if MacOS.version <= :el_capitan
    version "1.32"
    sha256 "251697fe6b76419b2cef41a89a2cb7d2e3f8caab0bc1ae82aed6c14a366fdad9"
  else
    version "2.43"
    sha256 "0ca5b43b32734793d063fbfb5e666453c4de462eb26600781f30045496688e06"
  end

  url "http://download.artman21.co.jp/product/JeditOmega/JeditOmega#{version.no_dots}.dmg",
      verified: "artman21.co.jp/"
  name "Jedit Ω"
  desc "Text editor"
  homepage "http://www.artman21.com/en/jeditOmega/"

  livecheck do
    url "http://www.artman21.com/en/jeditOmega/download.html"
    regex(/Rev[._-](\d+(?:\.\d+)+)/i)
  end

  app "Jedit Ω.app"
end
