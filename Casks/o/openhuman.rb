cask "openhuman" do
  os macos: "darwin", linux: "linux"

  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.58.0"
  sha256 arm:          "c87262ade0e211b8c751180652f7a8ce6f5e5aa96ac67f7f3ee1ac285558569d",
         x86_64:       "4d7f68ad4afa668bc14042c6e43fa475b78aa154330a29a94eee309c00bb2fe8",
         x86_64_linux: "b5fd1472d99005c539722cb4a553267386ec5cbfcd6bb9c125a07d43bf8fe043",
         arm64_linux:  "7f4fba3bcfb13b573f12cfa966ae6d47319afa535c7e92429405e0c5d646cb86"

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
