cask 'duplicate-annihilator' do
  version :latest
  sha256 :no_check

  url 'http://brattoo.com/propaganda/downloadDa.php'
  name 'Duplicate Annihilator'
  homepage 'http://brattoo.com/propaganda/'
  license :commercial

  container nested: 'Duplicate Annihilator.dmg'

  app 'Duplicate Annihilator.app'
end
