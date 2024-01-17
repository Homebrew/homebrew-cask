cask "netiquette" do
  version "2.2.0"
  sha256 "0e4b579f28be4b222d5057cc0263d5cc33fc23a3887b683a9bdc5b180e1199a9"

  url "https://github.com/objective-see/Netiquette/releases/download/v#{version}/Netiquette_#{version}.zip",
      verified: "github.com/objective-see/"
  name "Netiquette"
  desc "Network monitor"
  homepage "https://objective-see.com/products/netiquette.html"

  depends_on macos: ">= :mojave"

  app "Netiquette.app"

  zap trash: [
    "~/Library/Caches/com.objective-see.Netiquette",
    "~/Library/Preferences/com.objective-see.Netiquette.plist",
  ]
end
