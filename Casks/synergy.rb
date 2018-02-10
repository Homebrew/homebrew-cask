cask 'synergy' do
  version '2.0.5,b1462-3f23b557'
  sha256 '8ead0011ecafe430ce1670cfadf7b614b9112fd33f1669f00d9c50ecb43ebc0c'

  url "https://binaries.symless.com/v#{version.before_comma}/Synergy_v#{version.before_comma}-stable_#{version.after_comma}.dmg"
  appcast 'https://github.com/symless/synergy-core/releases.atom',
          checkpoint: '30225dbfbca4a5ccb30bf3f54cd7fe1b0603cf5cdab715c10d3207aac4c76e95'
  name 'Synergy'
  homepage 'https://symless.com/synergy'

  app 'Synergy.app'
end
