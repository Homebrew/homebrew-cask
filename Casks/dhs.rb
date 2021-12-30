cask "dhs" do
  version "1.4.1"
  sha256 "6d0ce00e0e111059e157bae26d4a913d7cb7c42cee6493b638c2c5019fe987fc"

  url "https://bitbucket.org/objective-see/deploy/downloads/DHS_#{version}.zip",
      verified: "bitbucket.org/objective-see/"
  name "Dylib Hijack Scanner"
  desc "Scans for dylib hijacking"
  homepage "https://objective-see.com/products/dhs.html"

  app "DHS.app"

  zap trash: [
    "~/Library/Preferences/com.objective-see.DHS.plist",
    "~/Library/Saved Application State/com.objective-see.DHS.savedState",
  ]
end
