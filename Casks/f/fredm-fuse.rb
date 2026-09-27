cask "fredm-fuse" do
  version "1.10.0"
  sha256 "8fd48e10800a897dfdb2e2c5ec60edd553cf7cd7f3ebf0ea34e92c4857e839a2"

  url "https://downloads.sourceforge.net/fuse-for-macosx/fuse-for-macosx/#{version}/FuseForMacOS-#{version}.zip"
  name "Fuse for Mac OS X"
  desc "Port of the UNIX ZX Spectrum emulator Fuse"
  homepage "https://fuse-for-macosx.sourceforge.io/"

  depends_on macos: :ventura

  app "Fuse for macOS/Fuse.app"

  zap trash: "~/Library/Preferences/net.sourceforge.fuse-for-macosx.Fuse.plist"
end
