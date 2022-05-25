cask "netiquette" do
  version "2.0.0"
  sha256 "54b6ae3da6ffe7644077608083cc40939e4ec4bd8fd0436f4a12f6ec48a4a4fb"

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
