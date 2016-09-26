cask 'synergy' do
  version '1.8.3,db9181b'
  sha256 '9c20556b79691ab45d4cd96ed56e4f67f223fee5d7763e29001e705b44c21b97'

  url "https://symless.com/files/packages/synergy-v#{version.before_comma}-stable-#{version.after_comma}-MacOSX1011-x86_64.dmg"
  name 'Synergy'
  homepage 'https://symless.com/synergy/'
  license :commercial

  app 'Synergy.app'
end
