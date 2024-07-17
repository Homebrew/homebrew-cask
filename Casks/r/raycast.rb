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

    version "1.79.0"
    sha256 arm:   "39651a8e1389dbf27129155b263bcf4a67265bb77a5ce2d09861a3584670dbc6",
           intel: "c1d2e67a96422df4c31b2bdb26522f72ca84ff5f5bbc0e46e8110d2285333741"

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
