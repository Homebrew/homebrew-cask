cask "milanote" do
  version "2.2.33"
  sha256 "953233500221fb97d473f50973311e31db7145a7b001556ebf055b40a8cd6da6"

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
