cask 'synergy' do
  version '2.0.11,b1783-8c94f00f'
  sha256 'af13c4b26d00c4cd87173af7196b5d713a09e9c2818fa1538264f6f692a87355'

  url "https://binaries.symless.com/v#{version.before_comma}/Synergy_v#{version.before_comma}-stable_#{version.after_comma}.dmg"
  name 'Synergy'
  homepage 'https://symless.com/synergy'

  app 'Synergy.app'
end
