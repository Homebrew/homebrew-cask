cask "fredm-fuse" do
  version "1.5.6"
  sha256 "fb7997f06f445a80ee426c9403c8a0244c0ca891479f6b80de6fc53f101df767"

  url "https://downloads.sourceforge.net/fuse-for-macosx/fuse-for-macosx/#{version}/FuseForMacOS-#{version}.zip",
      verified: "downloads.sourceforge.net/fuse-for-macosx/"
  name "Fuse for Mac OS X"
  desc "Port of the UNIX ZX Spectrum emulator Fuse"
  homepage "https://fuse-for-macosx.sourceforge.io/"

  deprecate! date: "2024-09-01", because: :unmaintained

  app "Fuse for MacOS/Fuse.app"

  caveats do
    requires_rosetta
  end
end
