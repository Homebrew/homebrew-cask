cask "cinebench" do
  version "2024"
  sha256 "abd8533154d54cb74dc005226177767b7f16d6e647a0cc075a2f45854d3887ea"

  url "https://mx-app-blob-prod.maxon.net/mx-package-production/website/macos/maxon/cinebench/Cinebench#{version}_macOS.dmg",
      referer: "https://www.maxon.net/en/downloads/cinebench-#{version}-downloads"
  name "Cinebench"
  desc "Hardware benchmarking utility"
  homepage "https://www.maxon.net/products/cinebench/"

  livecheck do
    url "https://www.maxon.net/en/downloads"
    regex(/cinebench-?[rv]?(\d+(?:\.\d+)*)-downloads/i)
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
