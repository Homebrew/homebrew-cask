cask "convert3dgui" do
  version "1.4.0"
  sha256 "bd56806e987eef2aa57c150a19fc6c9d8c357eff0f2bbc765dd5d9ff6ca37c29"

  url "https://downloads.sourceforge.net/c3d/Experimental/c3d-#{version}-MacOS-x86_64.dmg"
  name "Convert3DGUI"
  desc "Command-line tool for converting 3D images between common file formats"
  homepage "https://sourceforge.net/projects/c3d"

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
