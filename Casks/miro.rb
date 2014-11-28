cask :v1 => 'miro' do
  version :latest
  sha256 :no_check

  url 'http://ftp.osuosl.org/pub/pculture.org/miro/osx/Miro.dmg'
  homepage 'http://www.getmiro.com/'
  license :unknown

  app 'Miro.app'
end
