cask "jasp" do
  version "0.16.3.0"
  sha256 "f59d226ff4803c0f56e2abda8e3b10b66d107f5ec1dfe440aef688562cb8f031"

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
