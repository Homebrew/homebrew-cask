cask "mockoon" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"
  name_start = on_system_conditional macos: "mockoon.setup.", linux: "mockoon-"

  version "9.8.0"
  sha256 arm:          "99c0a347b5e8c39b6f2c3059b7d4fd2b2a012af90f36ee08fbfbd65417c64d2b",
         intel:        "4964ea309090b39204d2264bbd5e514ab4d23e5db4b708493810dd17d11a061e",
         arm64_linux:  "8ca10159765d1241a0f9cee5ee39f7e702767c82316c27c549659b736f41ecf6",
         x86_64_linux: "760741edb2847ea30667ea2cc86c16376e9acdfed0e78c1c2e84328008f0c4a7"

  on_macos do
    depends_on macos: :monterey

    app "Mockoon.app"

    zap trash: [
      "~/Library/Application Support/mockoon",
      "~/Library/Logs/Mockoon",
      "~/Library/Preferences/com.mockoon.app.plist",
      "~/Library/Saved Application State/com.mockoon.app.savedState",
    ]
  end
  on_linux do
    app_image "mockoon-#{version}.#{arch}.AppImage", target: "Mockoon.AppImage"

    zap trash: "~/.config/mockoon"
  end

  url "https://github.com/mockoon/mockoon/releases/download/v#{version}/#{name_start}#{version}.#{arch}.#{os}"
  name "Mockoon"
  desc "Create mock APIs in seconds"
  homepage "https://mockoon.com/"

  livecheck do
    url "https://api.mockoon.com/releases/desktop/stable.json"
    strategy :json do |json|
      json["tag"]
    end
  end

  auto_updates true
end
