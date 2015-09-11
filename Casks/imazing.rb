cask :v1 => 'imazing' do
  version '1.2.4-1439985663'
  sha256 '3c976aef00fd4fc29d224fd387baf7a8f18959a00fdb607e96a8d3fefe062d00'

  # devmate.com is the official download host per the vendor homepage
  url "https://dl.devmate.com/com.DigiDNA.iMazingMac/#{version.sub(%r{-.*},'')}/#{version.sub(%r{.*?-},'')}/iMazingforMac-#{version.sub(%r{-.*},'')}.dmg"
  name 'iMazing'
  appcast 'http://updates.devmate.com/com.DigiDNA.iMazingMac.xml',
          :sha256 => '097749ec17809265704df2aa4d7eb2fc936a7bab9f89e497dd79877812131dc9'
  homepage 'https://imazing.com/'
  license :commercial

  app 'iMazing.app'

  depends_on :macos => '>= :lion'
end
