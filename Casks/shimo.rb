cask 'shimo' do
  version :latest
  sha256 :no_check

  url 'http://www.feingeist.io/fg-library/download.php?appName=Shimo4'
  appcast 'http://www.feingeist.io/fg-library/appcast.php'
  name 'Shimo'
  homepage 'https://www.feingeist.io/shimo/'
  license :commercial

  app 'Shimo.app'
end
