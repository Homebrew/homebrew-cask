cask 'synergy' do
  version '1.8.6,2ab21aa'
  sha256 'f1ca271a56f0f42cc76dd3908c750d90cab7f51c329ac6fdebc04da7e64b5aef'

  url "https://symless.com/files/packages/synergy-v#{version.before_comma}-stable-#{version.after_comma}-MacOSX-x86_64.dmg"
  name 'Synergy'
  homepage 'https://symless.com/synergy/'

  app 'Synergy.app'
end
