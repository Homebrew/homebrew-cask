cask "milanote" do
  version "3.1.3"
  sha256 "5aaa9db9bbd424447ace2ffc1fa04e72c2c937239efa34799dfb7fe68f239e46"

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
