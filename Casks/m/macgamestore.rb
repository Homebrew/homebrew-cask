cask "macgamestore" do
  version "4.3.4,6084"
  sha256 "9f4b86ba8726de7c00fa129392b5b3cfdb0af7b682dfedfa1e0b00e08ea0cf11"

  url "https://www.macgamestore.com/api_clientapp/clientupdates/public/core6/MacGameStore_#{version.csv.first}_#{version.csv.second}.tgz"
  name "MacGameStore"
  desc "Buy, download, and play your games"
  homepage "https://www.macgamestore.com/app/"

  livecheck do
    url "https://www.macgamestore.com/api_clientapp/clientupdates/public/update.xml"
    regex(%r{/MacGameStore_(\d+(?:\.\d+)+)_(\d+)\.t}i)
    strategy :sparkle do |item, regex|
      item.url.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :sierra"

  app "MacGameStore.app"

  zap trash: [
    "/Applications/MacGameStore",
    "~/Library/Application Support/MacGameStore.com",
  ]

  caveats do
    requires_rosetta
  end
end
