cask "jasp" do
  version "0.16.4.0"
  sha256 "a6d8850a32a4ca859369591417db721e6f2017469074e6fd3ba0c53380cf1c0d"

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
