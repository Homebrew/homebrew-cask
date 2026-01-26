cask "simpledemviewer" do
  version "8.5.2"
  sha256 "0888ad07505196c8c5daccec2feb25c73280f64dadd23898c2228cd4fa50c7bf"

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
