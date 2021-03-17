cask "sweet-home3d" do
  version "6.5"
  sha256 "35ca42369d6ded451e1d4ca54740a45f575d8da7f85e2674eb8a0eb828b47310"

  url "https://downloads.sourceforge.net/sweethome3d/SweetHome3D/SweetHome3D-#{version}/SweetHome3D-#{version}-macosx.dmg",
      verified: "sourceforge.net/sweethome3d/"
  appcast "https://sourceforge.net/projects/sweethome3d/rss?path=/SweetHome3D"
  name "Sweet Home 3D"
  homepage "http://www.sweethome3d.com/"

  app "Sweet Home 3D.app"
end
