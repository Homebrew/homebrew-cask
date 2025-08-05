cask "m3unify" do
  version "2.2.0"
  sha256 "f46192615beff9572e1c0438a9f75bc73540352e1a7a85a4844e20aa10a3215d"

  url "https://dougscripts.com/itunes/scrx/m3unifyv#{version.no_dots}.zip"
  name "M3Unify"
  desc "File exporter and M3U playlist creator"
  homepage "https://dougscripts.com/apps/m3unifyapp.php"

  livecheck do
    url "https://dougscripts.com/itunes/itinfo/m3unify_appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :mojave"

  app "M3Unify.app"

  caveats do
    requires_rosetta
  end
end
