cask "jan" do
  version "0.8.7"
  sha256 arm:          "0124e6048837d467955792155ff63c566260700a2da673a34e1af8185d781083",
         intel:        "0124e6048837d467955792155ff63c566260700a2da673a34e1af8185d781083",
         x86_64_linux: "4b37501a01cd9d2e4aeaac3bb96352f6f7df29aa5666acfc326e3bf33666f61a"

  on_macos do
    url "https://github.com/janhq/jan/releases/download/v#{version}/jan-mac-universal-#{version}.zip"

    app "Jan.app"

    uninstall quit: "jan.ai.app"

    zap trash: [
      "~/Library/Application Support/Jan",
      "~/Library/Application Support/jan.ai.app",
      "~/Library/Caches/jan.ai.app",
      "~/Library/Preferences/jan.ai.app.plist",
      "~/Library/Saved Application State/jan.ai.app.savedState",
      "~/Library/WebKit/jan.ai.app",
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
