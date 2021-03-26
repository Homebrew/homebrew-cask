cask "macgamestore" do
  version "4.3.0,6080"
  sha256 "be51e1caa0a60a5efad126cab62f50a1913eb8103d3e63c91303aebf4cbd9598"

  url "https://www.macgamestore.com/api_clientapp/clientupdates/public/core6/MacGameStore_#{version.before_comma}_#{version.after_comma}.tgz"
  name "MacGameStore"
  homepage "https://www.macgamestore.com/app/"

  livecheck do
    url "https://www.macgamestore.com/api_clientapp/clientupdates/public/update.xml"
    strategy :sparkle do |item|
      match = item.url.match(%r{/MacGameStore_(\d+(?:\.\d+)*)_(\d+)\.tgz}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "MacGameStore.app"

  zap trash: [
    "~/Library/Application Support/MacGameStore.com",
    "/Applications/MacGameStore",
  ]
end
