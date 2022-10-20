cask "chipmunk-basic" do
  version "1.368.2202"
  sha256 "6f941e96fb3a9b721d56681992c2fc569107cdebc036094c4b2582786f2c90d4"

  url "https://www.nicholson.com/rhn/files/Chipmunk_Basic_368b202.dmg"
  name "Chipmunk BASIC"
  desc "BASIC interpreter, for retro programs"
  homepage "https://www.nicholson.com/rhn/basic/"

  livecheck do
    url :url
    regex(/<h2>Chipmunk\s+BASIC\s+v?(\d+(?:\.\d+)+)[" <]/i)
  end

  app "Chipmunk BASIC.app"

  zap trash: [
    "~/com.nicholson.chipmunkbasic3co.plist",
    "~/Library/Saved Application State/com.nicholson.chipmunkbasic3co.savedState",
  ]
end
