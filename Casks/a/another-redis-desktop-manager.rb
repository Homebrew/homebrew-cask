cask "another-redis-desktop-manager" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.7.4"
  sha256 arm:          "65398843725498c2835e2df2e8da2e35e9ce5f83d7632f012eb12a2d8705087a",
         intel:        "da9d453274efda8a764bb9d0ac511004175e23f8ac705920381226f1f3c29ff6",
         arm64_linux:  "70d0f8ac686c8c67324ff41d827b45237bc3cfb23d27a24246b2065e707d91e3",
         x86_64_linux: "089ae6c4592e1a804c38d299cd2979d1f84c58ba704d70f9c981cf0eebfa7316"

  on_macos do
    app "Another Redis Desktop Manager.app"

    zap trash: [
      "~/Library/Application Support/another-redis-desktop-manager",
      "~/Library/Preferences/me.qii404.another-redis-desktop-manager.plist",
    ]
  end
  on_linux do
    app_image "Another-Redis-Desktop-Manager-linux-#{version}-#{arch}.AppImage",
              target: "AnotherRedisDesktopManager.AppImage"
  end

  url "https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v#{version}/Another-Redis-Desktop-Manager-#{os}-#{version}-#{arch}.#{url_end}"
  name "Another Redis Desktop Manager"
  desc "Redis desktop manager"
  homepage "https://github.com/qishibo/AnotherRedisDesktopManager/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
