cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2026.06.0-211"
  sha256 arm:   "decd27971739b6adb34fb90b9c8a6af178cdc08e70f05f659e1c8213cb95c1ff",
         intel: "1b5b3e6eae26c4d4a13a84f245e255c22018364a1e369f569d4a457c60cb8463"

  url "https://cdn.posit.co/positron/releases/mac/#{arch}/Positron-darwin-#{version}-#{arch}.zip"
  name "Positron"
  desc "Data science IDE"
  homepage "https://positron.posit.co/"

  livecheck do
    url "https://cdn.posit.co/positron/releases/mac/#{arch}/releases.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :monterey

  app "Positron.app"

  zap trash: [
    "~/.positron",
    "~/Library/Application Support/Positron",
    "~/Library/Preferences/com.rstudio.positron.plist",
    "~/Library/Saved Application State/com.rstudio.positron.savedState",
  ]
end
