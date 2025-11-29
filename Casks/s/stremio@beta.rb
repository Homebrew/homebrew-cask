cask "stremio@beta" do
  arch arm: "arm64", intel: "x64"

  version "5.1.7"
  sha256 arm:   "1886dde77a31e3b762b0c799c69d3b6567f7d186ca25eb3b60c15c6e32efd044",
         intel: "cf5345e9d42337c6f7a67d97d822445b97cd3e9c587e66c80770004f528e84ca"

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
