cask "filen" do
  arch arm: "arm64", intel: "x64"

  version "2.0.4"
  sha256 :no_check

  url "https://cdn.filen.io/desktop/release/filen_#{arch}.dmg"
  name "Filen"
  desc "Desktop client for Filen.io"
  homepage "https://filen.io/"

  livecheck do
    url "https://github.com/FilenCloudDienste/filen-desktop/releases/latest/"
    strategy :git
  end

  app "Filen.app"

  zap trash: [
    "~/Library/Preferences/io.filen.desktop.plist",
    "~/Library/Application Support/filen-desktop",
    "~/Library/Saved Application State/io.filen.desktop.savedState",
    "~/Library/Logs/filen-desktop",
  ]
end
