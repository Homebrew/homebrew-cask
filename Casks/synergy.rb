cask 'synergy' do
  version '1.8.7,9799e96'
  sha256 '7405758afdba9b0bdf5c01f4f7a01f2760382cda97b91171972ee065d64ba369'

  url "https://symless.com/files/packages/synergy-v#{version.before_comma}-stable-#{version.after_comma}-MacOSX-x86_64.dmg"
  name 'Synergy'
  homepage 'https://symless.com/synergy/'

  app 'Synergy.app'
end
