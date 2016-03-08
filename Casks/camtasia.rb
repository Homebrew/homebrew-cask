cask 'camtasia' do
  version :latest
  sha256 :no_check

  url 'http://download.techsmith.com/camtasiamac/enu/Camtasia.dmg'
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'
  license :commercial

  app 'Camtasia 2.app'
end
