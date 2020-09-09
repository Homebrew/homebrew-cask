cask "synergy" do
  version "1.12.0"
  sha256 "2227753328c44356598bf1c282401e5b4baf7c957a1942e16ef2b52b58f945e1"

  # github.com/DEAKSoftware/Synergy-Binaries was verified as official when first introduced to the cask
  url "https://github.com/DEAKSoftware/Synergy-Binaries/releases/download/#{version}-stable/synergy-#{version}-stable-darwin-19.4.0-x86_64.dmg"
  appcast "https://github.com/DEAKSoftware/Synergy-Binaries/releases.atom"
  name "Synergy"
  homepage "https://symless.com/synergy"

  app "Synergy.app"
end
