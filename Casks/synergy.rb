cask 'synergy' do
  version '2.0.11,b1783-8c94f00f'
  sha256 'e46285a92e3c8a94eb60de7c222d1672c177e3d986111f37da17e61642329322'

  url "https://binaries.symless.com/v#{version.before_comma}/Synergy_v#{version.before_comma}-stable_#{version.after_comma}.dmg"
  name 'Synergy'
  homepage 'https://symless.com/synergy'

  app 'Synergy.app'
end
