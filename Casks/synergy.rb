cask 'synergy' do
  version '2.0.5,b1462-3f23b557'
  sha256 '8ead0011ecafe430ce1670cfadf7b614b9112fd33f1669f00d9c50ecb43ebc0c'

  url "https://binaries.symless.com/v#{version.before_comma}/Synergy_v#{version.before_comma}-stable_#{version.after_comma}.dmg"
  name 'Synergy'
  homepage 'https://symless.com/synergy'

  app 'Synergy.app'
end
