cask "fredm-fuse" do
  version "1.9.2"
  sha256 "d9a4545bf907e626b115e2cb00d056b4904a81469ef52cb92fb04cb3b15025b6"

  url "https://downloads.sourceforge.net/fuse-for-macosx/fuse-for-macosx/#{version}/FuseForMacOS-#{version}.zip"
  name "Fuse for Mac OS X"
  desc "Port of the UNIX ZX Spectrum emulator Fuse"
  homepage "https://fuse-for-macosx.sourceforge.io/"

  depends_on macos: :ventura

  app "Fuse for macOS/Fuse.app"

  zap trash: "~/Library/Preferences/net.sourceforge.fuse-for-macosx.Fuse.plist"
end
