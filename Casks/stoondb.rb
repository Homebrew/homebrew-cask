cask "stoondb" do
  version "1.1.1"
  sha256 "9849940d731195d18ee826c5566c3ccf6c062f065d07e1096e374ae011e1a49d"

  url "https://github.com/dissojak/StoonDB/releases/download/v#{version}/StoonDB-macOS-v#{version}.dmg"
  name "StoonDB"
  desc "A blazing-fast, native macOS control panel for your local database and phpMyAdmin."
  homepage "https://github.com/dissojak/StoonDB"

  depends_on macos: ">= :monterey"

  app "StoonDB.app"

  zap trash: [
    "~/Library/Application Support/StoonDB",
    "~/Library/Preferences/com.dissojak.stoondb.plist",
  ]
end
