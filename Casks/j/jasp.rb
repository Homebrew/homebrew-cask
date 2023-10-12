cask "jasp" do
  arch arm: "arm64", intel: "x86_64"
  arch_suffix = on_arch_conditional intel: "_new"

  version "0.18.1.0"
  sha256 arm:   "4985018f2e31a496599a2b6374558e30f019012972457098930b50202fd8fa1b",
         intel: "51544c6127892bcd079d2128641700312daae63db02c540a346dacf03163a7d6"

  url "https://static.jasp-stats.org/JASP-#{version}-macOS-#{arch}#{arch_suffix}.dmg"
  name "JASP"
  desc "Statistical analysis application"
  homepage "https://jasp-stats.org/"

  livecheck do
    url "https://jasp-stats.org/thank-you-for-downloading-jasp-macos/"
    regex(/href=.*?JASP[._-]v?(\d+(?:\.\d+)+).+\.dmg/i)
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
