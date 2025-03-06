cask "raycast" do
  on_big_sur :or_older do
    version "1.50.0"
    sha256 "f8bbd00d06636e3fe9f154ff69ff57c0a48a90a77ae58cdcc2b285f61a170a88"

    url "https://releases.raycast.com/releases/#{version}/download?build=universal"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    arch arm: "arm", intel: "x86_64"

    version "1.93.2"
    sha256 arm:   "0d22b8d84d756447dc4c55cb63b773e7886a7515f35fc45406fd981cab8e30c4",
           intel: "4cc6e06843713e23365044cd9a93f9066547c1d36ce3edc51acb1a3aa341cdec"

    url "https://releases.raycast.com/releases/#{version}/download?build=#{arch}"

    livecheck do
      url "https://releases.raycast.com/download"
      regex(/Raycast[._-]v?(\d+(?:\.\d+)+)(?:[._-](\h+))[._-]universal\.dmg/i)
      strategy :header_match
    end
  end

  name "Raycast"
  desc "Control your tools with a few keystrokes"
  homepage "https://raycast.com/"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Raycast.app"

  uninstall quit:       "com.raycast.macos",
            login_item: "Raycast"

  zap trash: [
    "~/.config/raycast",
    "~/Library/Application Scripts/com.raycast.macos.BrowserExtension",
    "~/Library/Application Support/com.raycast.macos",
    "~/Library/Caches/com.raycast.macos",
    "~/Library/Caches/SentryCrash/Raycast",
    "~/Library/Containers/com.raycast.macos.BrowserExtension",
    "~/Library/Cookies/com.raycast.macos.binarycookies",
    "~/Library/HTTPStorages/com.raycast.macos",
    "~/Library/Preferences/com.raycast.macos.plist",
    "~/Library/WebKit/com.raycast.macos",
  ]
end
