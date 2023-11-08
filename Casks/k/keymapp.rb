cask "keymapp" do
  version "0.0.6"
  sha256 :no_check

  url "https://oryx.nyc3.cdn.digitaloceanspaces.com/keymapp/keymapp-latest.dmg",
      verified: "oryx.nyc3.cdn.digitaloceanspaces.com/keymapp/"
  name "Keymapp"
  desc "ZSA keyboard firmware flasher"
  homepage "https://www.zsa.io/flash"

  livecheck do
    url :url
    strategy :extract_plist do |items|
      items["com.zsa.io.Keymapp"].short_version
    end
  end

  depends_on macos: ">= :monterey"

  app "Keymapp.app"

  zap trash: [
    "~/Library/Application Support/.keymapp",
    "~/Library/Caches/com.zsa.io.Keymapp",
    "~/Library/Preferences/com.zsa.io.Keymapp.plist",
    "~/Library/WebKit/com.zsa.io.Keymapp",
  ]
end
