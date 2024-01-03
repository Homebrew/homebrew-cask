cask "textsniper-gumroad" do
  version "1.10.1"
  sha256 "3542eedfa1a1d15b8d5351d7fee0ae28451d0b3d01d474995f214bf675eb76d2"

  url "https://s3.amazonaws.com/textsniper.app/Gumroad/TextSniper#{version}.dmg",
      verified: "s3.amazonaws.com/textsniper.app/"
  name "TextSniper"
  desc "Extract text from images and other digital documents in seconds"
  homepage "https://textsniper.app/"

  livecheck do
    url "https://textsniper.app/api/downloads/mac-latest"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "TextSniper.app"

  uninstall  launchctl: "com.valerijs.boguckis.gumroad.TextSniper-LaunchAtLoginHelper",
             quit:      "com.valerijs.boguckis.gumroad.TextSniper",
             delete:    "/Applications/TextSniper.app"

  zap trash: [
    "~/Library/Application Scripts/com.valerijs.boguckis.gumroad.TextSniper-LaunchAtLoginHelper",
    "~/Library/Application Support/com.valerijs.boguckis.gumroad.TextSniper",
    "~/Library/Caches/com.valerijs.boguckis.gumroad.TextSniper",
    "~/Library/Containers/com.valerijs.boguckis.gumroad.TextSniper-LaunchAtLoginHelper",
    "~/Library/Preferences/com.valerijs.boguckis.gumroad.TextSniper.plist",
  ]
end
