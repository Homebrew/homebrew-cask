cask "kode54-cog" do
  version "1163,dca9655c6"
  sha256 "9e0a03d81c5b2e2c2e399432ea0cb9357660f1117ba42081bc09edbc45057295"

  # losno.co/cog/ was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast "https://balde.losno.co/cog/mercury.xml"
  name "Cog"
  homepage "https://kode54.net/cog/"

  auto_updates true

  app "Cog.app"
end
