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

    livecheck_arch = on_arch_conditional arm: "arm", intel: "x86"

    version "1.84.7"
    sha256 arm:   "eb66c9fbfa757d4532c40503ea4e48eb4cfcc198ea3a2cb440d4c7ba8c293be8",
           intel: "67bda92cef7fd82c6386d1f5c78532a380c5e3973d9447000598a53a19b94748"

    url "https://releases.raycast.com/releases/#{version}/download?build=#{arch}"

    livecheck do
      url :url
      regex(/Raycast[._-]v?(\d+(?:\.\d+)+)(?:[._-](\h+))[._-]#{livecheck_arch}\.dmg/i)
      strategy :header_match
    end
  end

  name "Raycast"
  desc "Control your tools with a few keystrokes"
  homepage "https://raycast.com/"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Raycast.app"

  uninstall quit: "com.raycast.macos"

  zap trash: [
    "~/.config/raycast",
    "~/Library/Application Support/com.raycast.macos",
    "~/Library/Caches/com.raycast.macos",
    "~/Library/Caches/SentryCrash/Raycast",
    "~/Library/Cookies/com.raycast.macos.binarycookies",
    "~/Library/HTTPStorages/com.raycast.macos",
    "~/Library/Preferences/com.raycast.macos.plist",
  ]
end
