cask "openhuman" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.63.17"
  sha256 arm:          "930e1d892ef202fb426443cd4766f685ac7c52343dcd5556427b2330091760d1",
         intel:        "d96582e178ce4f697c7ff97fd1aecc53fcd34b58725db0a87e76fbc303c8c786",
         arm64_linux:  "01c0d333ab233a25afa8b687e73a80aac4709711cb0b8fa7c0b6f853e59e8856",
         x86_64_linux: "9f7caa5cf4e612720c3fcdac06c02c9b42285fd9c86b2428b65e0a2bba679625"

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

  url "https://github.com/tinyhumansai/openhuman/releases/download/v#{version}/OpenHuman_#{version}_#{arch}.#{url_end}"
  name "OpenHuman"
  desc "Personal AI assistant with local memory and integrations"
  homepage "https://tinyhumans.ai/openhuman"
end
