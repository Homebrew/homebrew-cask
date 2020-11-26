cask "kode54-cog" do
  version "1170,474dca396"
  sha256 "6bebe7243be6262ce0412c8c92cdd8b78ed03767864a2c7098a8b808c5295540"

  # losno.co/cog/ was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast "https://balde.losno.co/cog/mercury.xml"
  name "Cog"
  homepage "https://kode54.net/cog/"

  auto_updates true

  app "Cog.app"
end
