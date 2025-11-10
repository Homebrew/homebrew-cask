cask "remember-the-milk" do
  arch arm: "arm64", intel: "x64"

  version "1.7.0"
  sha256 arm:   "045e4db086f013f4cf33fd8f1870af9b4c7b9a2c3ea12d759f39439121b1ed4c",
         intel: "b3dd4dc854713b6a23c8c8b94d1a2de9e7a1065722582c71eef9795efc047874"

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
