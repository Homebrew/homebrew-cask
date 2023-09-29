cask "finbar" do
  version "1.11.1"
  sha256 :no_check

  url "https://www.roeybiran.com/apps/finbar/download"
  name "Finbar"
  desc "Menu bar searching utility"
  homepage "https://www.roeybiran.com/apps/finbar"

  livecheck do
    url "https://www.roeybiran.com/apps/finbar/appcast.xml"
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
