cask "another-redis-desktop-manager" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.7.2"
  sha256 arm:          "017a83750d79cf84530990c3bbe1fe93a2ae5124bb763d3c97932de0d38ac62b",
         intel:        "5a9cad3eb52cc56f012362ed82f9694cbea7b8506fd3fad6329b50ba03be0a59",
         arm64_linux:  "fd2c093fb9f1a203a67840500595e261e2661ada21e1cb4f4e532cf0204239b2",
         x86_64_linux: "25befbc2864c5b8c431f1d9d6db820a87e8c2b72930322580874a3c5f823b189"

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
