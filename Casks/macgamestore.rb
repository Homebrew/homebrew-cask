cask "macgamestore" do
  version "4.2.1,6077"
  sha256 "a434cc79bfc732ea0d6c9096e3587ee2a2c2be7ffbb269ef173b81427343f668"

  url "https://www.macgamestore.com/api_clientapp/clientupdates/public/core6/MacGameStore_#{version.before_comma}_#{version.after_comma}.tgz"
  appcast "https://www.macgamestore.com/api_clientapp/clientupdates/public/update.xml"
  name "MacGameStore"
  homepage "https://www.macgamestore.com/app/"

  app "MacGameStore.app"

  zap trash: [
    "~/Library/Application Support/MacGameStore.com",
    "/Applications/MacGameStore",
  ]
end
