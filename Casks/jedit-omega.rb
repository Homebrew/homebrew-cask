cask "jedit-omega" do
  if MacOS.version <= :el_capitan
    version "1.32"
    sha256 "251697fe6b76419b2cef41a89a2cb7d2e3f8caab0bc1ae82aed6c14a366fdad9"
  else
    version "2.35"
    sha256 "ba4b5a38b3db75fe36dfee6a8d5dca1ec346b989064fe2f1876f18d2b2d1c956"
  end

  url "http://download.artman21.co.jp/product/JeditOmega/JeditOmega#{version.no_dots}.dmg",
      verified: "artman21.co.jp/"
  appcast "http://www.artman21.com/en/jeditOmega/history.html"
  name "Jedit Ω"
  homepage "http://www.artman21.com/en/jeditOmega/"

  app "Jedit Ω.app"
end
