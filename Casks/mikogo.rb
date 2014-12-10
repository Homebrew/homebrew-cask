cask :v1 => 'mikogo' do
  version :latest
  sha256 :no_check

  url 'http://download.mikogo4.com/mikogo.dmg'
  homepage 'http://www.mikogo.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Mikogo.app'
end
