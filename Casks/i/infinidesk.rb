cask "infinidesk" do
  version "3.2"
  sha256 "1950c1f10aa902eb9b5955a8a30dd6d7f6e11f4872abab7164f88f73b5c7c586"

  url "https://infinidesk.app/static/download/v#{version}/InfiniDesk.dmg"
  name "InfiniDesk"
  desc "Create multiple virtual desktops, each with unique files, wallpaper and widgets"
  homepage "https://infinidesk.app/"

  livecheck do
    url :homepage
    regex(/Version\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :big_sur

  app "InfiniDesk.app"

  zap trash: [
    "~/Library/Application Support/Infinidesk",
    "~/Library/Preferences/app.infinidesk.InfiniDesk.plist",
  ]
end
