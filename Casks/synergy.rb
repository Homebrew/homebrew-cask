cask 'synergy' do
  version '2.0.2,b1153-665fa610'
  sha256 '5290d727b4a83d2450ac2c5f784600c995fd92778d46cb633634335fe448f15d'

  url "https://binaries.symless.com/v#{version.before_comma}/Synergy_v#{version.before_comma}-stable_#{version.after_comma}.dmg"
  appcast 'https://github.com/symless/synergy-core/releases.atom',
          checkpoint: '30225dbfbca4a5ccb30bf3f54cd7fe1b0603cf5cdab715c10d3207aac4c76e95'
  name 'Synergy'
  homepage 'https://symless.com/synergy'

  app 'Synergy.app'
end
