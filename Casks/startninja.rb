cask 'startninja' do
  version :latest
  sha256 :no_check

  # dl2.macupdate.com/prod was verified as official when first introduced to the cask
  url 'https://dl2.macupdate.com/prod/StartNinjaInstaller.dmg'
  name 'StartNinja'
  homepage 'http://www.allvu.com/startninja.html'

  depends_on macos: '>= :lion'

  app 'StartNinja.app'
end
