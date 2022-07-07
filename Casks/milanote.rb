cask "milanote" do
  version "3.1.10"
  sha256 "e2d44472384e1f64f9b017f09fc6e38a09ee75f15280ce1619e1887ccb5dce7d"

  url "https://milanote-app-releases.s3.amazonaws.com/Milanote-#{version}.dmg",
      verified: "milanote-app-releases.s3.amazonaws.com/"
  name "Milanote"
  desc "Organize your ideas and projects into visual boards"
  homepage "https://www.milanote.com/"

  livecheck do
    url "https://www.milanote.com/download-mac-app"
    regex(/href=.*?Milanote[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
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
