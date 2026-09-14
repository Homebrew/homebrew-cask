cask "simpledemviewer" do
  version "8.6.1"
  sha256 "cca95230db8e0758a6c6a68b39554b69db3849991974e0d77346dcb085b03834"

  url "https://jizoh.jp/program/SDVr_#{version.no_dots}.zip"
  name "SimpleDEMViewer"
  desc "Digital Elevation Model viewer"
  homepage "https://jizoh.jp/english.html"

  livecheck do
    url "https://jizoh.jp/pages/download.html"
    regex(/SimpleDEMViewer\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :monterey

  app "SimpleDEMViewer #{version}/SimpleDEMViewer.app"

  uninstall quit: "jp.jizoh.SDVr*"

  zap trash: "~/Library/Preferences/jp.jizoh.SDVr#{version.major}.plist"
end
