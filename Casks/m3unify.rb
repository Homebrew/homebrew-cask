cask "m3unify" do
  version "2.1.0"
  sha256 "eefb09a4586b296868ecf6e5e57bb57330993a88c4341d3bb455d406b73912c6"

  url "https://dougscripts.com/itunes/scrx/m3unifyv#{version.no_dots}.zip"
  appcast "https://dougscripts.com/itunes/itinfo/m3unify_appcast.xml"
  name "M3Unify"
  homepage "https://dougscripts.com/apps/m3unifyapp.php"

  depends_on macos: ">= :mojave"

  app "M3Unify.app"
end
