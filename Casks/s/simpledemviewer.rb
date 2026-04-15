cask "simpledemviewer" do
  version "8.6.0"
  sha256 "24b8d594805ade8ef2c5e1d5b2179e3fb45a019c20bc8b4450a4b4dd87bc5706"

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
