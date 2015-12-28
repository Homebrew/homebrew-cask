cask 'snagit' do
  version :latest
  sha256 :no_check

  url 'http://download.techsmith.com/snagitmac/enu/Snagit.dmg'
  appcast 'https://techsmithredirect.appspot.com/',
          :sha256 => '33e89684f8f33f097a14efc51fc1dca1757a505287e701af8fc7974f0f853c6e'
  name 'Snagit'
  homepage 'https://www.techsmith.com/snagit.html'
  license :commercial

  app 'Snagit.app'
end
