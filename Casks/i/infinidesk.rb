cask "infinidesk" do
  version "3.01"
  sha256 "b5817b285a6655faf9f97f55d270fe43541405536a5f46f898b63b3664dea153"

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
