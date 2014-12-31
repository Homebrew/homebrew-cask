cask :v1 => 'snagit' do
  version :latest
  sha256 :no_check

  url 'http://download.techsmith.com/snagitmac/enu/Snagit.dmg'
  appcast 'http://techsmithredirect.appspot.com/'
  homepage 'http://www.techsmith.com/snagit.html'
  license :commercial

  app 'Snagit.app'
end
