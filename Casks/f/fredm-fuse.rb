cask "fredm-fuse" do
  version "1.10.1"
  sha256 "2dcbc5252b4aedd98ef954ed8a21d7a61d7cecb37b0efaf18f4000b228ae4594"

  url "https://downloads.sourceforge.net/fuse-for-macosx/fuse-for-macosx/#{version}/FuseForMacOS-#{version}.zip"
  name "Fuse for Mac OS X"
  desc "Port of the UNIX ZX Spectrum emulator Fuse"
  homepage "https://fuse-for-macosx.sourceforge.io/"

  depends_on macos: :sonoma

  app "Fuse for macOS/Fuse.app"

  zap trash: "~/Library/Preferences/net.sourceforge.fuse-for-macosx.Fuse.plist"
end
