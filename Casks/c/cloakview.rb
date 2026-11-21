cask "cloakview" do
  version "0.3.2"
  sha256 "668a11ac20ef365015f40d80d53c68af5169aecaa29ccdc14dc7372ea44b29e9"

  url "https://github.com/baphomet444/cloakview/releases/download/v#{version}/CloakView_#{version}_aarch64.dmg"
  name "CloakView"
  desc "Meeting copilot that stays off your shared screen"
  homepage "https://getcloakview.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "CloakView.app"

  zap trash: [
    "~/Library/Application Support/com.getcloakview.app",
    "~/Library/Caches/com.getcloakview.app",
    "~/Library/Preferences/com.getcloakview.app.plist",
    "~/Library/Saved Application State/com.getcloakview.app.savedState",
  ]
end
