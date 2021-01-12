cask "convert3dgui" do
  version "1.1.0"
  sha256 "db5b43ab64f8a24c786b61e3eaeaee41620e814f36514afe904559b91ca6b65b"

  url "https://downloads.sourceforge.net/c3d/c3d-#{version}-MacOS-x86_64.dmg"
  appcast "https://sourceforge.net/projects/c3d/rss?path=/c3d/#{version}"
  name "Convert3DGUI"
  desc "Command-line tool for converting 3D images between common file formats"
  homepage "https://sourceforge.net/projects/c3d"

  app "Convert3DGUI.app"
  binary "#{appdir}/Convert3DGUI.app/Contents/bin/c2d"
  binary "#{appdir}/Convert3DGUI.app/Contents/bin/c3d"
  binary "#{appdir}/Convert3DGUI.app/Contents/bin/c3d_affine_tool"
  binary "#{appdir}/Convert3DGUI.app/Contents/bin/c4d"

  zap trash: "~/Library/Saved Application State/org.itksnap.c3dgui.savedState"
end
