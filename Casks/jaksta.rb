cask :v1 => 'jaksta' do
  version '1.3.3'
  sha256 '8f54cdba4ab42aec0430cdc15f9fd62370391bd2c42e0b734d6d5adea0355f69'

  url "http://downloads.jaksta.com/release/mac/Jaksta-#{version}.dmg"
  name 'Jaksta'
  appcast 'http://downloads.jaksta.com/release/mac/sparkle/JakstaforMac.xml',
          :sha256 => '17d58d78dc008d18226c67348f377fc60b1dc84f42cc3fae438094c6e81c3072'
  homepage 'http://www.jaksta.com/Products#JakstaMediaRecorderMac'
  license :commercial

  app 'Jaksta.app'
end
