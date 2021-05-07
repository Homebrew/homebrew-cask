cask "macgamestore" do
  version "4.3.1,6081"
  sha256 "ba659f4a537148e87c7b9a1241bf00d015bffc37709040550cd5d7ce71cd0430"

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
