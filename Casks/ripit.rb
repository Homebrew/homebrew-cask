cask "ripit" do
  version "1.6.9"
  sha256 "76a3450016db2ba93a4b74271327b19246794813b8ad5916752eb9817c2ad0bc"

  url "http://files.thelittleappfactory.com/ripit/RipIt.zip"
  appcast "http://files.thelittleappfactory.com/ripit/appcast.xml"
  name "RipIt"
  desc "DVD ripper"
  homepage "http://thelittleappfactory.com/ripit/"

  auto_updates true

  app "RipIt.app"

  zap trash: [
    "~/Library/Caches/com.thelittleappfactory.RipIt",
    "~/Library/Preferences/.RipIt",
    "~/Library/Preferences/com.thelittleappfactory.RipIt.plist",
  ]
end
