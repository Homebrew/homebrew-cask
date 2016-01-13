cask 'snagit' do
  version :latest
  sha256 :no_check

  url 'http://download.techsmith.com/snagitmac/enu/Snagit.dmg'
  appcast 'https://techsmithredirect.appspot.com/',
          :checkpoint => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b856'
  name 'Snagit'
  homepage 'https://www.techsmith.com/snagit.html'
  license :commercial

  app 'Snagit.app'
end
