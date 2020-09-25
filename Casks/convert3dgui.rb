cask "convert3dgui" do
  version "1.0.0"
  sha256 "73fb4bce06f4194bba3a6bd6302ce34dfc13b939d01ea370173113a63ef04e4b"
  
  url do
    require "open-uri"
    project_name = "c3d"
    filename = "c3d-#{version}-MacOS-x86_64"
    ext = "dmg"
    "https://master.dl.sourceforge.net/project/#{project_name}/#{project_name}/#{version}/#{filename}.#{ext}"
  end
  appcast "https://sourceforge.net/projects/c3d/rss?path=/c3d/#{version}"
  name "Convert3DGUI"
  desc "Command-line tool for converting 3D images between common file formats"
  homepage "https://sourceforge.net/projects/c3d"

  app "Convert3DGUI.app"

  zap trash: [
    "~/Library/Saved Application State/org.itksnap.c3dgui.savedState",
  ]
end
