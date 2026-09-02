cask "nuage" do
  version "0.0.10"
  sha256 "ce7229d464f9fb5a1f5bab6b4d67495f8e77692be95c3d7813168faf3c9d1626"

  url "https://github.com/lbrndnr/nuage-macos/releases/download/v#{version}/Nuage.app.zip"
  name "Nuage"
  desc "Free and open-source SoundCloud client"
  homepage "https://github.com/lbrndnr/nuage-macos"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :ventura

  app "Nuage.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/Nuage*.plist",
    "~/Library/Caches/ch.laurinbrandner.nuage",
    "~/Library/Containers/ch.laurinbrandner.nuage",
    "~/Library/Logs/DiagnosticReports/Nuage*.crash",
    "~/Library/Preferences/ch.laurinbrandner.nuage.plist",
  ]
end
