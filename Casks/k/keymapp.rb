cask "keymapp" do
  version "2.1.0"
  sha256 "d8885edb250393ce106d96e89689c7d4236eb867612c2c1d4acc9869d759b73f"

  url "https://downloads.zsa.io/files/keymapp/#{version}/Keymapp_#{version}_universal.dmg"
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
  depends_on :macos

  app "Keymapp.app"

  zap trash: [
    "~/Library/Application Support/.keymapp",
    "~/Library/Caches/com.zsa.io.Keymapp",
    "~/Library/Preferences/com.zsa.io.Keymapp.plist",
    "~/Library/WebKit/com.zsa.io.Keymapp",
  ]
end
