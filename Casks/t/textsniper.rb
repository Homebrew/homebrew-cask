cask "textsniper" do
  version "1.10"
  sha256 "ecf2f88225e818c2fb605821f03e76bc1731ce36a2fd7d9ba8e46ef3bcf7d5b2"

  url "https://s3.amazonaws.com/textsniper.app/TextSniper#{version}.dmg",
      verified: "s3.amazonaws.com/textsniper.app/"
  name "textsniper"
  desc "Extract text from images and other digital documents in seconds"
  homepage "https://textsniper.app/"

  livecheck do
    url "https://textsniper.app/api/downloads/mac-latest"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "TextSniper.app"

  uninstall  quit:      "com.valerijs.boguckis.TextSniper",
             launchctl: "com.valerijs.boguckis.TextSniper-LaunchAtLoginHelper",
             delete:    "/Applications/TextSniper.app"

  zap trash: [
    "~/Library/Application Scripts/com.valerijs.boguckis.TextSniper-LaunchAtLoginHelper",
    "~/Library/Application Support/com.valerijs.boguckis.TextSniper",
    "~/Library/Caches/com.valerijs.boguckis.TextSniper",
    "~/Library/Containers/com.valerijs.boguckis.TextSniper-LaunchAtLoginHelper",
    "~/Library/Preferences/com.valerijs.boguckis.TextSniper.plist",
  ]
end
