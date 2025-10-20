cask "nuage" do
  version "0.0.9"
  sha256 "6d41b5b307511ae7db8e4613b3ce8882dd0d652fbe6bd7c006c90a4ff7b0ebc1"

  url "https://github.com/lbrndnr/nuage-macos/releases/download/v#{version}/Nuage.app.zip"
  name "Nuage"
  desc "Free and open-source SoundCloud client"
  homepage "https://github.com/lbrndnr/nuage-macos"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :ventura"

  app "Nuage.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/Nuage*.plist",
    "~/Library/Caches/ch.laurinbrandner.nuage",
    "~/Library/Containers/ch.laurinbrandner.nuage",
    "~/Library/Logs/DiagnosticReports/Nuage*.crash",
    "~/Library/Preferences/ch.laurinbrandner.nuage.plist",
  ]
end
