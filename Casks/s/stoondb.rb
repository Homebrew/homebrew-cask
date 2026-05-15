cask "stoondb" do
  version "1.1.1"
  sha256 "fcae2b03de2eb42c1eb71ec472951ba5be6717dd3425da19c0d6cdda95fe2354"

  url "https://github.com/dissojak/StoonDB/releases/download/v#{version}/StoonDB-macOS-v#{version}.dmg"
  name "StoonDB"
  desc "Native control panel for local databases and phpMyAdmin"
  homepage "https://github.com/dissojak/StoonDB"

  depends_on macos: :monterey

  app "StoonDB.app"

  zap trash: [
    "~/Library/Application Support/StoonDB",
    "~/Library/Preferences/com.dissojak.stoondb.plist",
  ]
end
