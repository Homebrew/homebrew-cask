cask "openhuman" do
  os macos: "darwin", linux: "linux"

  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.63.0"
  sha256 arm:          "8c85692572a4795a7ee46a1eed038569d0842d5aabab43849cac5922fe59efd2",
         x86_64:       "aaafc746d4f3df921c7a124af19b91332ec09b28bf2be436892471e60c5963c7",
         x86_64_linux: "103a1905291ce829b6ae95e055c110705905062db7d6c881f47e7d9cd306ba20",
         arm64_linux:  "aa43f25424b49cc3d6b1678355221c1521e910df7ace19be4916a8e781dad8c0"

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
