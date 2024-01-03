cask "jasp" do
  arch arm: "arm64", intel: "x86_64"
  arch_suffix = on_arch_conditional intel: "_new2"
  livecheck_folder = on_arch_conditional arm: "-apple-silicon"

  version "0.18.2.0"
  sha256 arm:   "1632cba4de6008966fe0bc00726fd29f296834ca97cfcbd6bd569b35b098d01e",
         intel: "75883975b6752020296034eb03a93dc199ccd599acd382708ec1b7f87093351b"

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
