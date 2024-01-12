cask "jasp" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_folder = on_arch_conditional arm: "-apple-silicon"

  version "0.18.3.0"
  sha256 arm:   "604c9eb6384274d8c52b6c1eb60700e4667255bdf89349a2bec9f01462f09d37",
         intel: "26e8cc9f9db6752e4ecc8124f87ca6ff608bf5de5a703a06e1c896358bb5b566"

  url "https://static.jasp-stats.org/JASP-#{version}-macOS-#{arch}.dmg"
  name "JASP"
  desc "Statistical analysis application"
  homepage "https://jasp-stats.org/"

  livecheck do
    url "https://jasp-stats.org/thank-you-for-downloading-jasp-macos#{livecheck_folder}/"
    regex(/href=.*?JASP[._-]v?(\d+(?:\.\d+)+)[._-]macOS[._-]#{arch}\.dmg/i)
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
