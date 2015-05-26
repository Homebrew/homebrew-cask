cask :v1 => 'mountain' do
  version :latest
  sha256 :no_check

  url 'http://appgineers.de/mountain/files/Mountain.zip'
  appcast 'http://appgineers.de/mountain/files/mountaincast.xml'
  name 'Mountain'
  homepage 'http://appgineers.de/mountain/'
  license :commercial

  depends_on :macos => '>= :snow_leopard'

  app 'Mountain.app'
end
