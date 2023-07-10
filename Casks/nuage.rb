cask "nuage" do
  version "0.0.4"
  sha256 "4fd5a8852ff3698323ce48c91c81f6a3041f922e946a7f1d076e40fa8658f5bb"

  url "https://github.com/lbrndnr/nuage-macos/releases/download/v#{version}/Nuage.app.zip"
  name "Nuage"
  desc "Free and open-source SoundCloud client"
  homepage "https://github.com/lbrndnr/nuage-macos"

  depends_on macos: ">= :big_sur"

  app "Nuage.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/Nuage*.plist",
    "~/Library/Caches/ch.laurinbrandner.nuage",
    "~/Library/Containers/ch.laurinbrandner.nuage",
    "~/Library/Logs/DiagnosticReports/Nuage*.crash",
    "~/Preferences/ch.laurinbrandner.nuage.plist",
  ]
end
