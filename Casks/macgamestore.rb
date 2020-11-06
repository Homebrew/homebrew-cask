cask "macgamestore" do
  version "4.1.1,6073"
  sha256 "88749a118e788b3a0b36bdb759304149924c0234e94bacf6d7ad5c848e7c8068"

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
