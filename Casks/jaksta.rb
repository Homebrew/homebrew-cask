cask :v1 => 'jaksta' do
  version '1.3.3'
  sha256 '8f54cdba4ab42aec0430cdc15f9fd62370391bd2c42e0b734d6d5adea0355f69'

  url "http://downloads.jaksta.com/release/mac/Jaksta-#{version}.dmg"
  homepage 'http://www.jaksta.com/Products#JakstaMediaRecorderMac'
  license :unknown

  app 'Jaksta.app'
end
