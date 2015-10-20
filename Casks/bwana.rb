cask :v1 => 'bwana' do
  version :latest
  sha256 :no_check

  url 'https://www.bruji.com/bwana/bwana.dmg'
  name 'Bwana'
  homepage 'http://www.bruji.com/bwana/'
  license :mit
  tags :vendor => 'Bruji'

  app 'Bwana.app'
end
