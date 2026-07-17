cask "openhuman" do
  os macos: "darwin", linux: "linux"

  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.61.8"
  sha256 arm:          "93a949473bfc8c29e7d747eda03e0fc5e300d5353e2644f67f5080a220cbb5bc",
         x86_64:       "4cf0a8c98a5e36d53ae39cf9c77085e413fbc02db9df6ba656c8c5a448450ed5",
         x86_64_linux: "2ed1b064a7fb8d85551248060ae2d2b9479610f4c6c44414da2298532d2ac39f",
         arm64_linux:  "a25ef228f89727cb40d0c2c4f547308ab90d471340a96db9aabe98e564049d04"

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
