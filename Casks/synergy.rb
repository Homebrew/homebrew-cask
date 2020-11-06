cask "synergy" do
  version "1.11.1,b207:55ec3105"
  sha256 "032d5553d5248f0f4ff4a29b0d19333d477606bc46fd3702e5408cadb19a977c"

  url "https://binaries.symless.com/synergy/v#{version.before_comma.major}-core-standard/v#{version.before_comma}-stable-#{version.after_colon}/synergy_v#{version.before_comma}-stable_#{version.after_comma.before_colon}-#{version.after_colon}_macos.dmg"
  appcast "https://github.com/symless/synergy-core/releases.atom"
  name "Synergy"
  desc "Keyboard and mouse sharing tool - open-source core"
  homepage "https://symless.com/synergy"

  app "Synergy.app"
end
