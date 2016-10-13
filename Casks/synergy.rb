cask 'synergy' do
  version '1.8.4,a6ff9079'
  sha256 '08a539fb7e258ece1e236807bd47fd2fd1be1b284c5b0c5576a797b10f7bd37b'

  url "https://symless.com/files/packages/synergy-v#{version.before_comma}-stable-#{version.after_comma}-MacOSX1011-x86_64.dmg"
  name 'Synergy'
  homepage 'https://symless.com/synergy/'

  app 'Synergy.app'
end
