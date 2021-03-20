cask "milanote" do
  version "2.2.34"
  sha256 "42d038aebb2419b5f01641d489b3f2bb2b16c12fb7924ebbf74d50e1d8570655"

  url "https://milanote-app-releases.s3.amazonaws.com/Milanote-#{version}.dmg",
      verified: "milanote-app-releases.s3.amazonaws.com/"
  name "Milanote"
  homepage "https://www.milanote.com/"

  livecheck do
    url "https://www.milanote.com/download-mac-app"
    strategy :page_match
    regex(%r{href=.*?/Milanote-(\d+(?:\.\d+)*)\.dmg}i)
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
