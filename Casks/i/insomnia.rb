cask "insomnia" do
  version "8.4.4"
  sha256 "b3ea762072528e09c1916d2432634eae860761b7ff7561162f03e036a237391b"

  url "https://github.com/Kong/insomnia/releases/download/core%40#{version}/Insomnia.Core-#{version}.dmg",
      verified: "github.com/Kong/insomnia/"
  name "Insomnia"
  desc "HTTP and GraphQL Client"
  homepage "https://insomnia.rest/"

  # Upstream previously used a date-based version scheme (e.g., `2023.5.8`)
  # before switching to a typical `8.1.0` format. The date-based versions are
  # numerically higher, so we have to avoid matching them.
  livecheck do
    url :url
    regex(/^core@v?(\d{1,3}(?:\.\d+)+)$/i)
  end

  auto_updates true

  app "Insomnia.app"

  zap trash: [
    "~/Library/Application Support/Insomnia",
    "~/Library/Caches/com.insomnia.app",
    "~/Library/Caches/com.insomnia.app.ShipIt",
    "~/Library/Cookies/com.insomnia.app.binarycookies",
    "~/Library/Preferences/ByHost/com.insomnia.app.ShipIt.*.plist",
    "~/Library/Preferences/com.insomnia.app.helper.plist",
    "~/Library/Preferences/com.insomnia.app.plist",
    "~/Library/Saved Application State/com.insomnia.app.savedState",
  ]
end
