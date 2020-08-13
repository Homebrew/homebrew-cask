cask "pennywise" do
  version "0.8.0"
  sha256 "9e6195f1096d399aafd77da74e4461964364fdbeec3b667cd91ecf9704e73b69"

  url "https://github.com/kamranahmedse/pennywise/releases/download/v#{version}/Pennywise-#{version}.dmg"
  appcast "https://github.com/kamranahmedse/pennywise/releases.atom"
  name "Pennywise"
  homepage "https://github.com/kamranahmedse/pennywise"

  app "Pennywise.app"
end
