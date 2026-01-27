cask "cinebench" do
  version "2026"
  sha256 "c8b156354f027cc9488957ae4129b6229691ff59320fa272f133b7e4cfd9dd94"

  url "https://mx-app-blob-prod.maxon.net/mx-package-production/website/macos/maxon/cinebench/Cinebench#{version}_macOS.dmg",
      referer: "https://www.maxon.net/en/downloads/cinebench-#{version}-downloads"
  name "Cinebench"
  desc "Hardware benchmarking utility"
  homepage "https://www.maxon.net/products/cinebench/"

  livecheck do
    url "https://www.maxon.net/en/downloads/cinebench-downloads"
    regex(/href=.*Cinebench[._-]?v?(\d+(?:\.\d+)*)[._-]macOS\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "Cinebench.app"

  uninstall quit: "net.maxon.cinebench"

  zap trash: [
    "~/Documents/MAXON",
    "~/Library/Caches/net.maxon.cinebench",
    "~/Library/Caches/net.maxon.cinema4d",
    "~/Library/Preferences/MAXON",
    "~/Library/Saved Application State/net.maxon.cinebench.savedState",
  ]
end
