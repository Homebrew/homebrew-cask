cask "raycast" do
  version "1.71.2"

  on_arm do
    sha256 "ef44ede1a19f42bf032c5a3aafeab4de0bbb8f5f8c18bcfb37e0f7b099e811f2"

    url "https://releases.raycast.com/releases/#{version}/download?build=arm"
  end
  on_intel do
    sha256 "dc1b4ff20a30666961cabb2306ccb7e6e80fe901a35c7b9bc5b6c3cecac3ca8b"

    url "https://releases.raycast.com/releases/#{version}/download?build=x86_64"
  end

  name "Raycast"
  desc "Control your tools with a few keystrokes"
  homepage "https://raycast.com/"

  livecheck do
    url "https://releases.raycast.com/releases"
    regex(/"version":\s*"(\d+(?:\.\d+)+)"/i)
    strategy :page_match
  end

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
