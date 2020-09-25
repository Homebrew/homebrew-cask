cask "convert3dgui" do
  version :latest
  sha256 :no_check

  url "https://master.dl.sourceforge.net/project/c3d/c3d/Nightly/c3d-nightly-MacOS-.dmg"
  name "Convert3DGUI"
  desc "A command-line tool for converting 3D images between common file formats"
  homepage "https://sourceforge.net/projects/c3d"

  app "Convert3DGUI.app"

  zap trash: [
    "~/Library/Saved Application State/org.itksnap.c3dgui.savedState",
  ]
end
