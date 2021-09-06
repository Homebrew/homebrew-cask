cask "macgamestore" do
  version "4.3.2,6082"
  sha256 "46b48ec39c4dbf1dce6d249b7de28e4f74765b0eca97a95a65bd06d9276da3d8"

  url "https://www.macgamestore.com/api_clientapp/clientupdates/public/core6/MacGameStore_#{version.before_comma}_#{version.after_comma}.tgz"
  name "MacGameStore"
  desc "Buy, download, and play your games"
  homepage "https://www.macgamestore.com/app/"

  livecheck do
    url "https://www.macgamestore.com/api_clientapp/clientupdates/public/update.xml"
    strategy :sparkle do |item|
      match = item.url.match(%r{/MacGameStore_(\d+(?:\.\d+)*)_(\d+)\.tgz}i)
      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "MacGameStore.app"

  zap trash: [
    "~/Library/Application Support/MacGameStore.com",
    "/Applications/MacGameStore",
  ]
end
