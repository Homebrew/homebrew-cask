cask "remember-the-milk" do
  arch arm: "arm64", intel: "x64"

  version "1.7.1"
  sha256 arm:   "59b834609e701523f6ce3d469088aadaf27be19b3c4b2b2ff5b4b38a26573d38",
         intel: "1ea2b33d6b072b7c5bee9a5fb7f8a5ee98e87b733d597fd07f789b36d6232dd5"

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

  depends_on macos: ">= :monterey"

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
