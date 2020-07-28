cask "kode54-cog" do
  version "1148,3b628c398"
  sha256 "08a9db7b22c3507272f0919b5d1b9264881c413edd1c58c90ce0b3cb5f0e3fd8"

  # losno.co/cog/ was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast "https://balde.losno.co/cog/mercury.xml"
  name "Cog"
  homepage "https://kode54.net/cog/"

  auto_updates true

  app "Cog.app"
end
