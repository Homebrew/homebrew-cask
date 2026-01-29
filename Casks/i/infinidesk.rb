cask "infinidesk" do
  version "2.31"
  sha256 "d3dfaa3e217c10989771148af4e80d546b0c23ed162eed94062679969c36565c"

  url "https://infinidesk.app/static/download/v#{version}/InfiniDesk.dmg"
  name "InfiniDesk"
  desc "Create multiple virtual desktops, each with unique files, wallpaper and widgets"
  homepage "https://infinidesk.app/"

  livecheck do
    url :homepage
    regex(/Version\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :big_sur"

  app "InfiniDesk.app"

  zap trash: [
    "~/Library/Application Support/Infinidesk",
    "~/Library/Preferences/app.infinidesk.InfiniDesk.plist",
  ]
end
