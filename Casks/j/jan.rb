cask "jan" do
  version "0.8.6"
  sha256 arm:          "69096584a1f081065770bdaf307ec8bfcb64dfb467c326d3381ffa9e658dc8a7",
         intel:        "69096584a1f081065770bdaf307ec8bfcb64dfb467c326d3381ffa9e658dc8a7",
         x86_64_linux: "2fe70fb088473a7bdb499e5ce071d5a573c547556914825db989ec1dd1052066"

  on_macos do
    url "https://github.com/janhq/jan/releases/download/v#{version}/jan-mac-universal-#{version}.zip"

    app "Jan.app"

    uninstall quit: "jan.ai.app"

    zap trash: [
      "~/Library/Application Support/Jan",
      "~/Library/Preferences/jan.ai.app.plist",
      "~/Library/Saved Application State/jan.ai.app.savedState",
    ]
  end
  on_linux do
    url "https://github.com/janhq/jan/releases/download/v#{version}/Jan_#{version}_amd64.AppImage"

    depends_on arch: :x86_64

    app_image "Jan_#{version}_amd64.AppImage", target: "Jan.AppImage"

    zap trash: [
      "~/.config/Jan",
      "~/.local/share/Jan",
    ]
  end

  name "Jan"
  desc "Offline AI chat tool"
  homepage "https://jan.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
