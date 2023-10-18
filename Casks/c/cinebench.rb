cask "cinebench" do
  version "2024"
  sha256 "dcc840852c85c2f9ea39f55e78b23efbb59a27960555c0fb319d5bce7f51fdb6"

  url "https://mx-app-blob-prod.maxon.net/mx-package-production/website/macos/maxon/cinebench/Cinebench#{version}_macOS.dmg"
  name "Cinebench"
  desc "Hardware benchmarking utility"
  homepage "https://www.maxon.net/products/cinebench/"

  livecheck do
    url "https://www.maxon.net/_nuxt/static/1697633267/en/downloads/cinebench-2024-downloads/payload.js"
    regex(/Cinebench(\d+(?:\.\d+)*)(?:_macOS\.dmg)/i)
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
