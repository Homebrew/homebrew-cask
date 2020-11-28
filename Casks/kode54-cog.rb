cask "kode54-cog" do
  version "1309,b375f06fa"
  sha256 "45967113c8bd1f99d0832093ec3004007c2f35250b5c10588c4b64fdbf661690"

  # losno.co/cog/ was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast "https://balde.losno.co/cog/mercury.xml"
  name "Cog"
  homepage "https://kode54.net/cog/"

  auto_updates true

  app "Cog.app"
end
