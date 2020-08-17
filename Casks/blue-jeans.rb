cask "blue-jeans" do
  version "2.22.0.349"
  sha256 "41142bcb87c3da8d68f3abef7fcb165725a10d84e39f5e210cbbea71ae3d2654"

  url "https://swdl.bluejeans.com/desktop-app/mac/#{version.major_minor_patch}/#{version}/BlueJeansInstaller.dmg"
  appcast "https://www.bluejeans.com/downloads"
  name "Blue Jeans videoconferencing"
  homepage "https://www.bluejeans.com/"

  installer manual: "BlueJeansInstaller.app"

  uninstall signal: [
    ["TERM", "com.bluejeansnet.Blue"],
    ["TERM", "com.bluejeansnet.BlueMenulet"],
  ],
            delete: "/Applications/Blue Jeans.app"
end
