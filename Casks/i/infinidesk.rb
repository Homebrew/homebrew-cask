cask "infinidesk" do
  version "3.22"
  sha256 "0c3ed452b430202d9c92f705e14f94319d84db9e7394947d9069565c0c35c685"

  url "https://infinidesk.app/static/download/v#{version}/InfiniDesk.dmg"
  name "InfiniDesk"
  desc "Create multiple virtual desktops, each with unique files, wallpaper and widgets"
  homepage "https://infinidesk.app/"

  livecheck do
    url :homepage
    regex(/Version\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  app "InfiniDesk.app"

  zap trash: [
    "~/Library/Application Support/Infinidesk",
    "~/Library/Preferences/app.infinidesk.InfiniDesk.plist",
  ]
end
