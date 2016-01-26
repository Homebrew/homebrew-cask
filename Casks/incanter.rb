cask 'incanter' do
  version :latest
  sha256 :no_check

  url 'http://incanter.org/downloads/Incanter.dmg'
  name 'Incanter'
  homepage 'http://incanter.org/'
  license :eclipse

  app 'Incanter.app'
end
