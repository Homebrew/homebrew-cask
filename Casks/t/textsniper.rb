cask "textsniper" do
  version "1.10.1"
  sha256 "a553dd9fdf54b8a12950db71519cf3aee6aa7b18d590d32813b71c2e1bc6a010"

  url "https://s3.amazonaws.com/textsniper.app/TextSniper#{version}.dmg",
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

  uninstall  launchctl: "com.valerijs.boguckis.TextSniper-LaunchAtLoginHelper",
             quit:      "com.valerijs.boguckis.TextSniper",
             delete:    "/Applications/TextSniper.app"

  zap trash: [
    "~/Library/Application Scripts/com.valerijs.boguckis.TextSniper-LaunchAtLoginHelper",
    "~/Library/Application Support/com.valerijs.boguckis.TextSniper",
    "~/Library/Caches/com.valerijs.boguckis.TextSniper",
    "~/Library/Containers/com.valerijs.boguckis.TextSniper-LaunchAtLoginHelper",
    "~/Library/Preferences/com.valerijs.boguckis.TextSniper.plist",
  ]
end
