cask :v1 => 'camtasia' do
  version :latest
  sha256 :no_check

  url 'http://download.techsmith.com/camtasiamac/enu/Camtasia.dmg'
  appcast 'http://techsmithredirect.appspot.com/cmac?target=sparkleappcast&product=camtasiamac&lang=enu&ver=2.7.1&os=mac&code=none'
  homepage 'http://www.techsmith.com/camtasia.html'
  license :unknown

  app 'Camtasia 2.app'
end
