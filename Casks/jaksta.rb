cask 'jaksta' do
  version '1.3.3'
  sha256 '8f54cdba4ab42aec0430cdc15f9fd62370391bd2c42e0b734d6d5adea0355f69'

  url "http://downloads.jaksta.com/release/mac/Jaksta-#{version}.dmg"
  appcast 'http://downloads.jaksta.com/release/mac/sparkle/JakstaforMac.xml',
          checkpoint: '703256f661160f17c271f94333d5e21b9b1c5c28123e48c7eadda8126a4c2394'
  name 'Jaksta'
  homepage 'https://www.jaksta.com/Products#JakstaMediaRecorderMac'

  app 'Jaksta.app'
end
