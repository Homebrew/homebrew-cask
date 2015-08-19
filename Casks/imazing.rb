cask :v1 => 'imazing' do
  version '1.2.2-1438365180'
  sha256 '737d4e25df54169c890b712968a4aa8ec3f665199e05f9320af444e458b2ad2c'

  # devmate.com is the official download host per the vendor homepage
  url "https://dl.devmate.com/com.DigiDNA.iMazingMac/#{version.sub(%r{-.*},'')}/#{version.sub(%r{.*?-},'')}/iMazingforMac-#{version.sub(%r{-.*},'')}.dmg"
  name 'iMazing'
  appcast 'http://updates.devmate.com/com.DigiDNA.iMazingMac.xml',
          :sha256 => 'b5ff3d4d493f31ce59b7f6803dd7407e84128a0ed71681130ba90e86cd2e93e3'
  homepage 'https://imazing.com/'
  license :commercial

  app 'iMazing.app'
end
