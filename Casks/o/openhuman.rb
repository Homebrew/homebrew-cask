cask "openhuman" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.63.9"
  sha256 arm:          "cd08a1b5ae9e69dc5dda74d2bb166c7d9435e644c2d3a1c8275c3da37e6a56cc",
         x86_64:       "29726743ddc66baf6a3b137969072d32e247d66fa33ef5081019e58ec6f24988",
         x86_64_linux: "365a512a97bf9cc4afae1f08ddeb0864a59bd5ef2646343bdfd0d5db2ac53d74",
         arm64_linux:  "8853cf5949391614b34a0e7694f8fda4c9cdf55beb24f83d9f4c4b748d8a99aa"

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
