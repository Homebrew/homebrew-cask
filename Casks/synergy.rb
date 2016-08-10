cask 'synergy' do
  version '1.8.2,36cd521'
  sha256 '07851d85a7cbb5875c8be7111880d3ab5213b0ef48c63ab1b4dfef8defdd6bcc'

  url "https://symless.com/files/packages/synergy-v#{version.before_comma}-stable-#{version.after_comma}-MacOSX1011-x86_64.dmg"
  name 'Synergy'
  homepage 'https://symless.com/synergy/'
  license :commercial

  app 'Synergy.app'
end
