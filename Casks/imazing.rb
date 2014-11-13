cask :v1 => 'imazing' do
  version :latest
  sha256 :no_check

  url 'http://dl.devmate.com/com.DigiDNA.iMazingMac/iMazingforMac.dmg'
  homepage 'http://imazing.com/'
  license :commercial

  app 'iMazing.app'
end
