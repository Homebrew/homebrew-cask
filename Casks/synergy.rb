cask 'synergy' do
  version '2.0.3,b1243-8a08e664'
  sha256 '98c94eab66516fe2d9d840562cc12fca09696c0882e1f14692ba20d9a78aeb8b'

  url "https://binaries.symless.com/v#{version.before_comma}/Synergy_v#{version.before_comma}-stable_#{version.after_comma}.dmg"
  appcast 'https://github.com/symless/synergy-core/releases.atom',
          checkpoint: '30225dbfbca4a5ccb30bf3f54cd7fe1b0603cf5cdab715c10d3207aac4c76e95'
  name 'Synergy'
  homepage 'https://symless.com/synergy'

  app 'Synergy.app'
end
