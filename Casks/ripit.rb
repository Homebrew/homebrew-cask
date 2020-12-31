cask "ripit" do
  version "1.6.9"
  sha256 :no_check

  url "http://files.thelittleappfactory.com/ripit/RipIt.zip"
  name "RipIt"
  desc "DVD ripper"
  homepage "http://thelittleappfactory.com/ripit/"

  livecheck do
    url "http://files.thelittleappfactory.com/ripit/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "RipIt.app"

  zap trash: [
    "~/Library/Caches/com.thelittleappfactory.RipIt",
    "~/Library/Preferences/.RipIt",
    "~/Library/Preferences/com.thelittleappfactory.RipIt.plist",
  ]
end
