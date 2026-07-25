cask "openhuman" do
  os macos: "darwin", linux: "linux"

  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.63.1"
  sha256 arm:          "ed1a3d1d39fc17caa9f1cb5dbc2d81e47ae64365bacc61b567714733ccdbd3ec",
         x86_64:       "00a1717f78c3ac37538a5f6862e8dde6cb1d1cfc138df7f45850e330bb880094",
         x86_64_linux: "9673da2ad506916460ecbe00b0d9dd74c56784d2722de76bec0caa757d9a2279",
         arm64_linux:  "99c37aff221e0f2fa0966036ddafd7630c28c45cc465d3944fefb863dc69528a"

  url_end = on_system_conditional linux: ".AppImage", macos: ".dmg"

  url "https://github.com/tinyhumansai/openhuman/releases/download/v#{version}/OpenHuman_#{version}_#{arch}#{url_end}",
      verified: "github.com/tinyhumansai/openhuman/"
  name "OpenHuman"
  desc "Personal AI assistant with local memory and integrations"
  homepage "https://tinyhumans.ai/openhuman"

  on_macos do
    auto_updates true

    app "OpenHuman.app"

    uninstall quit: "com.openhuman.app"

    zap trash: [
      "~/.openhuman",
      "~/Library/Preferences/com.openhuman.app.plist",
    ]
  end

  on_linux do
    app_image "OpenHuman_#{version}_#{arch}.AppImage", target: "OpenHuman.AppImage"
  end
end
