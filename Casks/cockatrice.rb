cask :v1 => 'cockatrice' do
  version :latest
  sha256 :no_check

  url 'http://www.woogerworks.com/files/cockatrice_weeklybuilds/Cockatrice-MacClient.dmg'
  homepage 'http://www.woogerworks.com/'
  license :gpl

  app 'cockatrice.app'
  app 'oracle.app'
end
