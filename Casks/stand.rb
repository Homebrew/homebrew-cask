cask "stand" do
  version "2.1.1"
  sha256 "5fce7d525ea7154d1df58b25d1902731f533a18656330593a7d3d2456fc1f314"

  url "https://f001.backblazeb2.com/file/stand-app/#{version}/Stand.zip",
      verified: "f001.backblazeb2.com/file/stand-app/"
  appcast "https://getstandapp.com/",
          must_contain: version.major_minor
  name "Stand"
  desc "Reminds you to stand up once an hour"
  homepage "https://getstandapp.com/"

  depends_on macos: ">= :catalina"

  app "Stand.app"

  uninstall quit: "com.reddavis.Stand"

  zap trash: [
    "~/Library/Caches/com.reddavis.Stand",
    "~/Library/Preferences/com.reddavis.Stand.plist",
  ]
end
