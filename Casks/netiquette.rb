cask "netiquette" do
  version "2.1.0"
  sha256 "e2bb8220a9216d6317735e1c67c90b56352449c520eac865f2e50db85f7b7a57"

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
