cask "jedit-omega" do
  if MacOS.version <= :el_capitan
    version "1.32"
    sha256 "251697fe6b76419b2cef41a89a2cb7d2e3f8caab0bc1ae82aed6c14a366fdad9"
  else
    version "2.39"
    sha256 "3a6db023daa8015fb6636aecd6b6745b25378d971990d70171c1e23748a9bce8"
  end

  url "http://download.artman21.co.jp/product/JeditOmega/JeditOmega#{version.no_dots}.dmg",
      verified: "artman21.co.jp/"
  appcast "http://www.artman21.com/en/jeditOmega/history.html"
  name "Jedit Ω"
  desc "Text editor"
  homepage "http://www.artman21.com/en/jeditOmega/"

  app "Jedit Ω.app"
end
