cask 'synergy' do
  version '2.0.9,b1697-4a1bbebe'
  sha256 '8d9fd724a590b3fcbd38d0cef4ff732045e20a023586fb738963c028b2bbe3d7'

  url "https://binaries.symless.com/v#{version.before_comma}/Synergy_v#{version.before_comma}-stable_#{version.after_comma}.dmg"
  name 'Synergy'
  homepage 'https://symless.com/synergy'

  app 'Synergy.app'
end
