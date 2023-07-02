cask "nuage" do
  version "0.0.3"
  sha256 "6cbaed6fc2e1ab7b2ec5bd4ed7460a636028ddfe4b67a557c6f16ca52b62b8d7"

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
