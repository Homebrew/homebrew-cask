cask "stremio@beta" do
  arch arm: "arm64", intel: "x64"

  version "5.1.16"
  sha256 arm:   "d75053aea263d828dc48251c1633412c344522d5fcb5e96bd953815aff9d9cbd",
         intel: "dd9a7e5dd4332177d3334e2e145c913776988f9c269c86afc393bdced29143ab"

  url "https://dl.strem.io/stremio-shell-macos/v#{version}/Stremio_#{arch}.dmg"
  name "Stremio"
  desc "Open-source media center"
  homepage "https://www.strem.io/"

  livecheck do
    url "https://www.stremio.com/updater/check?product=stremio-shell-macos&arch=#{arch}"
    strategy :json do |json|
      json["version"]
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  conflicts_with cask: "stremio"
  depends_on macos: ">= :big_sur"

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
