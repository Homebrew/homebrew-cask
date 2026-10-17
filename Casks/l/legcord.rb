cask "legcord" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "mac-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "1.3.1"
  sha256 arm:          "8e74c6087a7ddfdbba1b856dde7c02466c1189072022ff5bd7dcef8c1d685667",
         intel:        "8e74c6087a7ddfdbba1b856dde7c02466c1189072022ff5bd7dcef8c1d685667",
         arm64_linux:  "3700e5b7c93f819f670cc4ed93cc9979dd6b20eb4b2d2f99952f83f1ed167dcc",
         x86_64_linux: "a4bd04f54424545f027e93ebee46fd1afaadc6e1e4cd152972d3bfafbc87ff95"

  on_macos do
    depends_on macos: :monterey

    app "Legcord.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.legcord.legcord.sfl*",
      "~/Library/Application Support/legcord",
      "~/Library/Preferences/app.legcord.Legcord.plist",
      "~/Library/Saved Application State/app.legcord.Legcord.savedState",
    ]
  end
  on_linux do
    app_image "Legcord-#{version}-linux-#{arch}.AppImage", target: "Legcord.AppImage"

    zap trash: "~/.config/legcord"
  end

  url "https://github.com/legcord/legcord/releases/download/v#{version}/Legcord-#{version}-#{os}"
  name "Legcord"
  desc "Custom Discord client"
  homepage "https://legcord.app/"

  livecheck do
    url "https://legcord.app/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end
end
