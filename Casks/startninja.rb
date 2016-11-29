cask 'startninja' do
  version :latest
  sha256 :no_check

  # cdn.macupdate.com/prod/ was verified as official when first introduced to the cask
  url 'http://cdn.macupdate.com/prod/StartNinjaInstaller.dmg'
  name 'StartNinja'
  homepage 'http://www.allvu.com/startninja.html'

  app 'StartNinja.app'
end
