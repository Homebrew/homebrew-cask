cask "jasp" do
  arch arm: "arm64", intel: "x86_64"
  arch_suffix = on_arch_conditional intel: "_new2"
  livecheck_folder = on_arch_conditional arm: "-apple-silicon"

  version "0.18.1.0"
  sha256 arm:   "4985018f2e31a496599a2b6374558e30f019012972457098930b50202fd8fa1b",
         intel: "5805457002b7c566d4e0974041c5cc54d8ed72603b8260ac073b7b347a1d943d"

  url "https://static.jasp-stats.org/JASP-#{version}-macOS-#{arch}#{arch_suffix}.dmg"
  name "JASP"
  desc "Statistical analysis application"
  homepage "https://jasp-stats.org/"

  livecheck do
    url "https://jasp-stats.org/thank-you-for-downloading-jasp-macos#{livecheck_folder}/"
    regex(/href=.*?JASP[._-]v?(\d+(?:\.\d+)+)[._-]macOS[._-]#{arch}#{arch_suffix}\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "JASP.app"

  zap trash: [
    "~/.JASP",
    "~/Library/Application Support/JASP",
    "~/Library/Caches/JASP",
    "~/Library/Preferences/org.jasp-stats.JASP.plist",
    "~/Library/Saved Application State/org.jasp-stats.jasp.savedState",
  ]
end
