cask "jan" do
  version "0.8.8"
  sha256 arm:          "93c33b220907624346131a6d799faee8e6dfc2e042a996bcfaf82659c5bfc7fe",
         intel:        "93c33b220907624346131a6d799faee8e6dfc2e042a996bcfaf82659c5bfc7fe",
         x86_64_linux: "ef98314c0230e3066235fd195ff1ffdf652b85b264bbd9ddf337f99d077c9159"

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
