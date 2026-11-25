cask "lumo" do
  version "0.5.9"
  sha256 "637afbe66119bfbc9f5b0cc134ad62b5b12564878ff4641f5ceea81c86df5cda"

  url "https://proton.me/download/lumo/darwin/#{version}/Lumo-#{version}.dmg"
  name "Lumo"
  desc "AI assistant"
  homepage "https://proton.me/lumo"

  livecheck do
    url "https://proton.me/download/lumo/desktop/macos/v1/version.json"
    strategy :json do |json|
      json["Releases"]&.map do |item|
        next unless item["CategoryName"]&.match?("Stable")

        item["Version"]
      end
    end
  end

  auto_updates true
  depends_on :macos

  app "Lumo.app"

  uninstall quit: "me.proton.lumo-app"

  zap trash: [
    "~/Library/Application Support/me.proton.lumo-app",
    "~/Library/Caches/me.proton.lumo-app",
    "~/Library/HTTPStorages/me.proton.lumo-app.binarycookies",
    "~/Library/LaunchAgents/Lumo.plist",
    "~/Library/Logs/me.proton.lumo-app",
    "~/Library/Preferences/me.proton.lumo-app.plist",
    "~/Library/Saved Application State/me.proton.lumo-app.savedState",
    "~/Library/WebKit/me.proton.lumo-app",
  ]
end
