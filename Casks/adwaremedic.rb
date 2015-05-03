cask :v1 => 'adwaremedic' do
  version :latest
  sha256 :no_check

  url 'http://www.adwaremedic.com/AdwareMedic.dmg'
  name 'AdwareMedic'
  homepage 'http://www.adwaremedic.com/'
  license :gratis

  app 'AdwareMedic.app'
end
