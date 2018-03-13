cask 'synergy' do
  version '2.0.7,b1599-e4d1ed68'
  sha256 '4e7355fef83e20049039c22d3e62aa91627db7213ec203795f57a4eab3047e4a'

  url "https://binaries.symless.com/v#{version.before_comma}/Synergy_v#{version.before_comma}-stable_#{version.after_comma}.dmg"
  name 'Synergy'
  homepage 'https://symless.com/synergy'

  app 'Synergy.app'
end
