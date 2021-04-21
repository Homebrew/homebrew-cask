cask "phonetrans" do
  version "4.7.4"
  sha256 :no_check

  url "https://dl.imobie.com/phonetrans-mac.dmg"
  name "PhoneTrans"
  homepage "https://www.imobie.com/phonetrans/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "PhoneTrans.app"
end
