cask "keymapp" do
  version "1.3.2"
  sha256 :no_check

  url "https://oryx.nyc3.cdn.digitaloceanspaces.com/keymapp/keymapp-latest.dmg",
      verified: "oryx.nyc3.cdn.digitaloceanspaces.com/keymapp/"
  name "Keymapp"
  desc "ZSA keyboard firmware flasher"
  homepage "https://www.zsa.io/flash"

  livecheck do
    url "https://oryx.nyc3.cdn.digitaloceanspaces.com/keymapp/keymapp-macos.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Keymapp.app"

  zap trash: [
    "~/Library/Application Support/.keymapp",
    "~/Library/Caches/com.zsa.io.Keymapp",
    "~/Library/Preferences/com.zsa.io.Keymapp.plist",
    "~/Library/WebKit/com.zsa.io.Keymapp",
  ]
end
