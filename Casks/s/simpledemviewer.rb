cask "simpledemviewer" do
  version "8.7.0"
  sha256 "593831597691e7f9a5ee80fa1c6d84821d7901f1cc7e84aff231b27243113f26"

  url "https://jizoh.jp/program/SDVr_#{version.no_dots}.zip"
  name "SimpleDEMViewer"
  desc "Digital Elevation Model viewer"
  homepage "https://jizoh.jp/english.html"

  livecheck do
    url "https://jizoh.jp/pages/download.html"
    regex(/SimpleDEMViewer\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :monterey

  rename "SimpleDEMViewer */SimpleDEMViewer.app", "SimpleDEMViewer.app"

  app "SimpleDEMViewer.app"

  uninstall quit: "jp.jizoh.SDVr*"

  zap trash: "~/Library/Preferences/jp.jizoh.SDVr#{version.major}.plist"
end
