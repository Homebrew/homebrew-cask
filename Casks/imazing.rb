cask :v1 => 'imazing' do
  version :latest
  sha256 :no_check

  # devmate.com is the official download host per the vendor homepage
  url 'http://dl.devmate.com/com.DigiDNA.iMazingMac/iMazingforMac.dmg'
  name 'iMazing'
  appcast 'http://updates.devmate.com/com.DigiDNA.iMazingMac.xml',
          :sha256 => '20c1ab602462b7fc0d5b4cbd555cacf127b69a07a737579598ebcbc0f5b21319'
  homepage 'https://imazing.com/'
  license :commercial

  app 'iMazing.app'
end
