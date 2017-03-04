cask 'synergy' do
  version '1.8.8,c30301e'
  sha256 '9f9019b3c558bf0c05e558828ed282b29c316d9477c5f5169d3461e32dadb9b6'

  url "https://symless.com/files/packages/synergy-v#{version.before_comma}-stable-#{version.after_comma}-MacOSX-x86_64.dmg"
  name 'Synergy'
  homepage 'https://symless.com/synergy/'

  app 'Synergy.app'
end
