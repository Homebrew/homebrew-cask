cask "maus" do
  version "1.0"
  sha256 "de83c367eb232c67f5f0dc1c086b2130b96a080a37c41b702cded680341908e5"

  url "https://github.com/nauticjp/MAUS/releases/download/v#{version}/MAUS-#{version}.dmg"
  name "MAUS"
  desc "Menu bar utility that checks for app updates"
  homepage "https://github.com/nauticjp/MAUS"

  app "MAUS.app"

  zap trash: [
    "~/Library/Containers/com.nautic.MAUS",
    "~/Library/Preferences/com.nautic.MAUS.plist",
  ]
end
