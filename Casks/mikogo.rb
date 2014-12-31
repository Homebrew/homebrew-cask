cask :v1 => 'mikogo' do
  version :latest
  sha256 :no_check

  url 'http://download.mikogo4.com/mikogo.dmg'
  homepage 'http://www.mikogo.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Mikogo.app'
end
