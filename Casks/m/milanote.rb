cask "milanote" do
  version "3.4.52"
  sha256 "c6369e8338d51bf5bea7d4041749d668b277b62d9ca575289761aa71d453c532"

  url "https://milanote-app-releases.s3.amazonaws.com/Milanote-#{version}.dmg",
      verified: "milanote-app-releases.s3.amazonaws.com/"
  name "Milanote"
  desc "Organise your ideas and projects into visual boards"
  homepage "https://www.milanote.com/"

  livecheck do
    url "https://milanote-app-releases.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "Milanote.app"

  zap trash: [
    "~/Library/Application Support/Milanote",
    "~/Library/Caches/com.milanote.app",
    "~/Library/Caches/com.milanote.app.ShipIt",
    "~/Library/Library/Logs/Milanote",
    "~/Library/Preferences/com.milanote.app.helper.plist",
    "~/Library/Preferences/com.milanote.app.plist",
  ]
end
