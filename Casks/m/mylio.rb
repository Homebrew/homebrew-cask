cask "mylio" do
  version "24.8.7901"
  sha256 :no_check

  url "https://myliodownloads.com/Mylio.dmg"
  name "Mylio"
  desc "Photo organiser"
  homepage "https://mylio.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on :macos

  app "Mylio.app"

  uninstall launchctl: "mylollc.Mylio.LoginItem"

  zap trash: [
    "~/Library/Application Support/Mylio",
    "~/Library/Caches/mylollc.Mylio",
    "~/Library/HTTPStorages/mylollc.Mylio",
    "~/Library/Preferences/mylollc.Mylio.plist",
    "~/Library/WebKit/mylollc.Mylio",
    "~/Mylio",
  ]
end
