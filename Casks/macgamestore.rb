cask "macgamestore" do
  version "4.1.2,6074"
  sha256 "298704f1460c1fea38de0f198c23c0b3872a7ff7270156c58b0a072f87589955"

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
