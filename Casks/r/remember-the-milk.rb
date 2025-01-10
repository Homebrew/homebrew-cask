cask "remember-the-milk" do
  arch arm: "arm64", intel: "x64"

  version "1.4.5"
  sha256 arm:   "af811ce7e757d6d519b5cba39da6cfac3908a466221f507950e73c8c319ea491",
         intel: "5de31c803122fa32bda02d5327239bf573b3b41d7b3ad5551e706797dbe232df"

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}-#{arch}.zip"
  name "Remember The Milk"
  desc "To-do app"
  homepage "https://www.rememberthemilk.com/"

  livecheck do
    url "https://www.rememberthemilk.com/deskmilk-squirrel-updates?arch=#{arch}"
    regex(/RememberTheMilk[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.zip/i)
    strategy :json do |json, regex|
      match = json["url"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Remember The Milk.app"

  zap trash: [
    "~/Library/Application Support/Remember The Milk",
    "~/Library/Caches/com.rememberthemilk.Deskmilk",
    "~/Library/Caches/com.rememberthemilk.Deskmilk.ShipIt",
    "~/Library/HTTPStorages/com.rememberthemilk.Deskmilk.binarycookies",
    "~/Library/Preferences/com.rememberthemilk.Deskmilk.plist",
    "~/Library/Saved Application State/com.rememberthemilk.Deskmilk.savedState",
  ]
end
