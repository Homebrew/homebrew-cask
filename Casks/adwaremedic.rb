cask :v1 => 'adwaremedic' do
  version :latest
  sha256 :no_check

  url 'http://www.adwaremedic.com/AdwareMedic.dmg'
  homepage 'http://www.adwaremedic.com/'
  license :unknown

  app 'AdwareMedic.app'
end
