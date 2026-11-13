cask "raycast" do
  arch arm: "arm", intel: "x86_64"

  on_big_sur :or_older do
    version "1.50.0"
    sha256 arm:   "a6fb8f2e097768b74b5ddf9e9f9c127b1fdfa980993a20c0d3b593a2e3fa0534",
           intel: "b46f66225fdaed22b59d8c8d319a63961374c7fd47b7b8a40ef5573e6f36e888"

    url "https://releases.raycast.com/releases/#{version}/download?build=#{arch}"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey do
    version "1.94.4"
    sha256 arm:   "235082e306ed250026f8afb5f9240dfa3ebf2238cac33d15b18bf673c0a9e896",
           intel: "cad71d7846c313b9b71ee3d33c547b3931fa0657109441c0c76e6a725c2bd270"

    url "https://releases.raycast.com/releases/#{version}/download?build=#{arch}"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    on_sequoia :or_older do
      version "1.104.36"
      sha256 arm:   "a4e55a0798d2e063565abb2e57c7b50aa9c6b201ed7aa9fb2df755e9ef80617d",
             intel: "31fdcb8e187751628ede4a50572f6f7895f0c66593041e7f88890e2a18c28a60"

      url "https://releases.raycast.com/releases/#{version}/download?build=#{arch}"

      livecheck do
        url "https://releases.raycast.com/releases/latest?build=#{arch}"
        strategy :json do |json|
          json["version"]
        end
      end
    end
    on_tahoe :or_newer do
      version "2.12.1.0"
      sha256 "8d306491c4c76fc0312701254996041e00f6b6587c66714c632d64dbfe9e8096"

      url "https://x.raycast-releases.com/download?platform=macos&architecture=arm64&version=#{version}"

      livecheck do
        url "https://x.raycast-releases.com/releases/latest?platform=macos&architecture=arm64"
        strategy :json do |json|
          json["version"]
        end
      end

      depends_on arch: :arm64
    end
  end

  name "Raycast"
  desc "Control your tools with a few keystrokes"
  homepage "https://raycast.com/"

  auto_updates true
  depends_on :macos

  app "Raycast.app"

  uninstall quit:       "com.raycast.macos",
            login_item: "Raycast"

  zap trash: [
    "~/.config/raycast",
    "~/Library/Application Scripts/com.raycast.macos.BrowserExtension",
    "~/Library/Application Scripts/SY64MV22J9.com.raycast.macos.shared",
    "~/Library/Application Support/.com.raycast.macos.backups",
    "~/Library/Application Support/com.raycast.macos",
    "~/Library/Application Support/com.raycast.shared",
    "~/Library/Caches/com.raycast.macos",
    "~/Library/Caches/SentryCrash/Raycast",
    "~/Library/Containers/com.raycast.macos.BrowserExtension",
    "~/Library/Cookies/com.raycast.macos.binarycookies",
    "~/Library/Group Containers/SY64MV22J9.com.raycast.macos.shared",
    "~/Library/HTTPStorages/com.raycast.macos",
    "~/Library/Logs/com.raycast.macos",
    "~/Library/Preferences/com.raycast.macos.plist",
    "~/Library/WebKit/com.raycast.macos",
  ]
end
