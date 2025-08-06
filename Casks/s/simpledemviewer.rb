cask "simpledemviewer" do
  version "8.5.1"
  sha256 "e748aaff63eea2aef6a6803f60cbe8a04783e7d8c613057f2ff7a84b5f6f8da8"

  url "https://jizoh.jp/program/SDVr_#{version.no_dots}.zip"
  name "SimpleDEMViewer"
  desc "Digital Elevation Model viewer"
  homepage "https://jizoh.jp/english.html"

  livecheck do
    url "https://jizoh.jp/pages/download.html"
    regex(/SimpleDEMViewer\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :monterey"

  app "SimpleDEMViewer #{version}/SimpleDEMViewer.app"

  uninstall quit: "jp.jizoh.SDVr*"

  zap trash: "~/Library/Preferences/jp.jizoh.SDVr#{version.major}.plist"
end
