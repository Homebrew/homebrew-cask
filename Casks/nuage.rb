cask "nuage" do
  version "0.0.5"
  sha256 "5e39799770ad618f7625da0ee7a9727644061b80c2e19725fd6d07d67d72c010"

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
