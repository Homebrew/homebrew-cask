cask :v1 => 'shimo' do
  version :latest
  sha256 :no_check

  url 'http://www.feingeist.io/fg-library/download.php?appName=Shimo4'
  appcast 'http://www.feingeist.io/fg-library/appcast.php',
          :format => :sparkle
  name 'Shimo'
  homepage 'http://www.feingeist.io/shimo-vpn-client-for-mac/'
  license :commercial

  app 'Shimo.app'
end
