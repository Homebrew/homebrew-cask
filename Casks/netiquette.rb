cask "netiquette" do
  version "1.2.0"
  sha256 "08795827772384abcc4426d63c44f21fbc9e75d3595ed975a559a68dac6019b9"

  url "https://github.com/objective-see/Netiquette/releases/download/v#{version}/Netiquette_#{version}.zip",
      verified: "github.com/objective-see/"
  appcast "https://objective-see.com/products/changelogs/Netiquette.txt"
  name "Netiquette"
  homepage "https://objective-see.com/products/netiquette.html"

  depends_on macos: ">= :mojave"

  app "Netiquette.app"

  zap trash: [
    "~/Library/Caches/com.objective-see.Netiquette",
    "~/Library/Preferences/com.objective-see.Netiquette.plist",
  ]
end
