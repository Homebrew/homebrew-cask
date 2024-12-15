cask "finbar" do
  version "1.13.7"
  sha256 "237d0a76277fdabf3cec34a4c842d0b0ef73f1e54aac89f86153f4039dc3fe19"

  url "https://roeybiran.com/apps/finbar/Finbar%20#{version}.dmg"
  name "Finbar"
  desc "Menu bar searching utility"
  homepage "https://roeybiran.com/apps/finbar/"

  livecheck do
    url "https://roeybiran.com/apps/finbar/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Finbar.app"

  uninstall quit: "com.roeybiran.Finbar"

  zap trash: [
    "~/Library/Application Support/com.roeybiran.Finbar",
    "~/Library/Preferences/com.roeybiran.Finbar.plist",
  ]
end
