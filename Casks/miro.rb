cask 'miro' do
  version :latest
  sha256 :no_check

  # osuosl.org is the official download host per the vendor homepage
  url 'http://ftp.osuosl.org/pub/pculture.org/miro/osx/Miro.dmg'
  name 'Miro'
  homepage 'http://www.getmiro.com/'
  license :gpl

  app 'Miro.app'
end
