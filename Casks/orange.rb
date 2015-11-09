cask :v1 => 'orange' do
  version '3-3.2.dev0+2fc556d'
  sha256 '9811008e071590c66abb2ac65355d55e466a59de2cd392b76fd328114094cf70'

  url "http://orange.biolab.si/download/files/Orange#{version}.dmg"
  name 'Orange'
  homepage 'http://orange.biolab.si/'
  license :gpl

  app 'Orange.app'
end
