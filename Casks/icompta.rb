cask :v1 => 'icompta' do
  version :latest
  sha256 :no_check

  url 'https://www.lyricapps.fr/iCompta/downloads/iCompta.dmg'
  homepage 'http://www.icompta-app.com/'
  license :unknown

  app 'iCompta.app'
end
