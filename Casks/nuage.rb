cask "nuage" do
  version "0.0.6"
  sha256 "21c3607ee6e04ca4b17892a02f07c5d8a15278db4851bf8a138d5abe92b43511"

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
