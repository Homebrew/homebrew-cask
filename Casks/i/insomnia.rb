cask "insomnia" do
  version "9.1.1"
  sha256 "e2d0793d6883790bf6d289c454be932fc374268c9df62d6b5bd919f2ec2b1e5a"

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
  conflicts_with cask: "insomnia@alpha"
  depends_on macos: ">= :catalina"

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
