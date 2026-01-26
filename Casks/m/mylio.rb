cask "mylio" do
  version "24.7.7878"
  sha256 :no_check

  url "https://myliodownloads.com/Mylio.dmg",
      verified: "myliodownloads.com/"
  name "Mylio"
  desc "Photo organiser"
  homepage "https://mylio.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true

  app "Mylio.app"

  zap trash: [
    "~/Library/Application Support/Mylio",
    "~/Library/Caches/mylollc.Mylio",
    "~/Library/HTTPStorages/mylollc.Mylio",
    "~/Library/Preferences/mylollc.Mylio.plist",
    "~/Library/WebKit/mylollc.Mylio",
    "~/Mylio",
  ]
end
