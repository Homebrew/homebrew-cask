cask :v1 => 'icompta' do
  version :latest
  sha256 :no_check

  url 'https://www.lyricapps.fr/iCompta/downloads/iCompta.dmg'
  homepage 'http://www.icompta-app.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'iCompta.app'
end
