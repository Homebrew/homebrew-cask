cask "listen1" do
  # NOTE: "1" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x64"

  version "2.31.0"
  sha256 arm:   "c7afbb171edfb85e8704c4e022710ff2f8a9d268cc722e747803dbbfc18a0fc7",
         intel: "b83afd79a3954129868bbfe477e3bf0f4b94c3e2cf052ce7d577ecd300bf19e3"

  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac_#{arch}.dmg",
      verified: "github.com/listen1/listen1_desktop/"
  name "Listen 1"
  desc "Search and play songs from a variety of online sources"
  homepage "https://listen1.github.io/listen1/"

  app "Listen1.app"

  zap trash: [
    "~/Library/Application Support/listen1",
    "~/Library/Preferences/com.listen1.listen1.plist",
  ]
end
