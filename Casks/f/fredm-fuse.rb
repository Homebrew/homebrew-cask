cask "fredm-fuse" do
  version "1.9.1"
  sha256 "5102f43a447bb805092ae80741b79b6c07a96e1076bea07430905ccfd880325e"

  url "https://downloads.sourceforge.net/fuse-for-macosx/fuse-for-macosx/#{version}/FuseForMacOS-#{version}.zip"
  name "Fuse for Mac OS X"
  desc "Port of the UNIX ZX Spectrum emulator Fuse"
  homepage "https://fuse-for-macosx.sourceforge.io/"

  depends_on macos: :ventura

  app "Fuse for macOS/Fuse.app"

  zap trash: "~/Library/Preferences/net.sourceforge.fuse-for-macosx.Fuse.plist"
end
