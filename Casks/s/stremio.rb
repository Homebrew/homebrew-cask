cask "stremio" do
  arch arm: "arm64", intel: "x64"

  version "5.1.16"
  sha256 arm:   "d75053aea263d828dc48251c1633412c344522d5fcb5e96bd953815aff9d9cbd",
         intel: "dd9a7e5dd4332177d3334e2e145c913776988f9c269c86afc393bdced29143ab"

  on_arm do
    depends_on macos: ">= :big_sur"
  end
  on_intel do
    depends_on macos: ">= :catalina"
  end

  url "https://dl.strem.io/stremio-shell-macos/v#{version}/Stremio_#{arch}.dmg"
  name "Stremio"
  desc "Open-source media center"
  homepage "https://www.strem.io/"

  livecheck do
    url "https://www.stremio.com/downloads"
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/Stremio[._-]#{arch}\.dmg}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Stremio.app"

  zap trash: [
    "~/Library/Application Support/Smart Code ltd",
    "~/Library/Application Support/stremio-server",
    "~/Library/Caches/Smart Code ltd",
    "~/Library/Preferences/com.smartcodeltd.stremio.plist",
    "~/Library/Preferences/com.stremio.Stremio.plist",
    "~/Library/Saved Application State/com.smartcodeltd.stremio.savedState",
  ]
end
