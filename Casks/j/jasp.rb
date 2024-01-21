cask "jasp" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_folder = on_arch_conditional arm: "-apple-silicon"

  version "0.18.3.0"
  sha256 arm:   "9d701af21055dca67a98fc8269720d6d23bcfb82cceb3fa8f4774cb74d197bbb",
         intel: "37c10c0fb3c53b1b01fc4cf696b21273a62b7eb224eaa2ef0632b36cbcfa94ae"

  url "https://static.jasp-stats.org/JASP-#{version}-macOS-#{arch}_2.dmg"
  name "JASP"
  desc "Statistical analysis application"
  homepage "https://jasp-stats.org/"

  livecheck do
    url "https://jasp-stats.org/thank-you-for-downloading-jasp-macos#{livecheck_folder}/"
    regex(/href=.*?JASP[._-]v?(\d+(?:\.\d+)+)[._-]macOS[._-]#{arch}_2\.dmg/i)
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
