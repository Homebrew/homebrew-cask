cask "milanote" do
  version "2.2.48"
  sha256 "d913726ec8932f027338e061497f4ce2668a74a35b2abe11e2a6f86967c05ff5"

  url "https://milanote-app-releases.s3.amazonaws.com/Milanote-#{version}.dmg",
      verified: "milanote-app-releases.s3.amazonaws.com/"
  name "Milanote"
  desc "Organize your ideas and projects into visual boards"
  homepage "https://www.milanote.com/"

  livecheck do
    url "https://www.milanote.com/download-mac-app"
    regex(%r{href=.*?/Milanote[._-]?v?(\d+(?:\.\d+)+)\.dmg}i)
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
