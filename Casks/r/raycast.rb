cask "raycast" do
  on_big_sur :or_older do
    version "1.50.0"
    sha256 "f8bbd00d06636e3fe9f154ff69ff57c0a48a90a77ae58cdcc2b285f61a170a88"

    url "https://releases.raycast.com/releases/#{version}/download?build=universal"

    livecheck do
      skip "Legacy version"
    end

    depends_on macos: ">= :big_sur"
  end
  on_monterey :or_newer do
    arch arm: "arm", intel: "x86_64"

    livecheck_arch = on_arch_conditional arm: "arm", intel: "x86"

    version "1.71.3"
    sha256 arm:   "04c82466ef5d5807833c4eed97dcca0107ce89e229a8c5a66f49bd2f69ace0ea",
           intel: "f3d3cf7bdbe21e8fd8b7ccdd3daef895c9acadf06d39e147b82c8e3e5a6089b1"

    url "https://releases.raycast.com/releases/#{version}/download?build=#{arch}"

    livecheck do
      url :url
      regex(/Raycast[._-]v?(\d+(?:\.\d+)+)(?:[._-](\h+))[._-]#{livecheck_arch}\.dmg/i)
      strategy :header_match
    end

    depends_on macos: ">= :monterey"
  end

  name "Raycast"
  desc "Control your tools with a few keystrokes"
  homepage "https://raycast.com/"

  auto_updates true

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
