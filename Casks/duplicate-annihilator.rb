cask :v1 => 'duplicate-annihilator' do
  version :latest
  sha256 :no_check

  url 'http://brattoo.com/propaganda/downloadDa.php'
  homepage 'http://brattoo.com/propaganda/'
  license :unknown    # todo: improve this machine-generated value

  container :nested => 'Duplicate Annihilator.dmg'
  app 'Duplicate Annihilator.app'
end
