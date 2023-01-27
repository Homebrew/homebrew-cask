cask "jasp" do
  version "0.17.0.0"
  sha256 "58b145f127ae458538759a6bf2802d635b867cae4aeccf221d6505ebd58271ae"

  url "https://static.jasp-stats.org/JASP-#{version}-macOS-x86_64.dmg"
  name "JASP"
  desc "Statistical analysis application"
  homepage "https://jasp-stats.org/"

  livecheck do
    url "https://jasp-stats.org/thank-you-for-downloading-jasp-macos/"
    regex(/href=.*?JASP[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "JASP.app"

  zap trash: [
    "~/.JASP",
    "~/Library/Application Support/JASP",
    "~/Library/Caches/JASP",
    "~/Library/Preferences/org.jasp-stats.JASP.plist",
    "~/Library/Saved Application State/org.jasp-stats.jasp.savedState",
  ]
end
