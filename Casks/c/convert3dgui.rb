cask "convert3dgui" do
  version "1.0.0"
  sha256 "f90fc3732578e9c9378e6d9340611ab93955f8ee182af1a59edac55f8df4b728"

  url "https://downloads.sourceforge.net/c3d/c3d-#{version}-MacOS-x86_64.dmg"
  name "Convert3DGUI"
  desc "Command-line tool for converting 3D images between common file formats"
  homepage "https://sourceforge.net/projects/c3d"

  livecheck do
    url :url
    regex(%r{url=.*?/c3d/(\d+(?:\.\d+)+)/c3d[._-]v?\1[._-]MacOS}i)
  end

  app "Convert3DGUI.app"
  binary "#{appdir}/Convert3DGUI.app/Contents/bin/c2d"
  binary "#{appdir}/Convert3DGUI.app/Contents/bin/c3d"
  binary "#{appdir}/Convert3DGUI.app/Contents/bin/c3d_affine_tool"
  binary "#{appdir}/Convert3DGUI.app/Contents/bin/c4d"

  zap trash: "~/Library/Saved Application State/org.itksnap.c3dgui.savedState"

  caveats do
    requires_rosetta
  end
end
