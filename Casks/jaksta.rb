cask 'jaksta' do
  version '1.3.3'
  sha256 '8f54cdba4ab42aec0430cdc15f9fd62370391bd2c42e0b734d6d5adea0355f69'

  url "http://downloads.jaksta.com/release/mac/Jaksta-#{version}.dmg"
  appcast 'http://downloads.jaksta.com/release/mac/sparkle/JakstaforMac.xml',
          :sha256 => 'f0a160591507d8089ca848bf0c060420d149cda74aed580ccefa67968af3162f'
  name 'Jaksta'
  homepage 'https://www.jaksta.com/Products#JakstaMediaRecorderMac'
  license :commercial

  app 'Jaksta.app'
end
