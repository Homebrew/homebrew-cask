cask "netiquette" do
  version "2.3.0"
  sha256 "e204ac0c268942b9005f4f17be78b97a7b2d3b19803330d432c196021a0e8d4a"

  url "https://github.com/objective-see/Netiquette/releases/download/v#{version}/Netiquette_#{version}.zip",
      verified: "github.com/objective-see/"
  name "Netiquette"
  desc "Network monitor"
  homepage "https://objective-see.org/products/netiquette.html"

  depends_on macos: ">= :catalina"

  app "Netiquette.app"

  zap trash: [
    "~/Library/Caches/com.objective-see.Netiquette",
    "~/Library/Preferences/com.objective-see.Netiquette.plist",
  ]
end
