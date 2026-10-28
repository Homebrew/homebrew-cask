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
      version "1.104.32"
      sha256 arm:   "24f0d36443c73b2eb660f9d0cc3c313a567c48927bb1560ba918e06e04a7e839",
             intel: "f5b8e671ac26ca58097862a63560a5b7c6c6914939eb1b09483d3a2001448407"

      url "https://releases.raycast.com/releases/#{version}/download?build=#{arch}"

      livecheck do
        url "https://releases.raycast.com/releases/latest?build=#{arch}"
        strategy :json do |json|
          json["version"]
        end
      end
    end
    on_tahoe :or_newer do
      version "2.10.0.0"
      sha256 "c00c64d44a456a8233c4ca9209c2cb5a89ea980552730bd201ae3e80d9548e82"

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
