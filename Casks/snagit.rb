cask 'snagit' do
  if MacOS.release == :mavericks
    version '3.3.7'
    sha256 :no_check
    url "http://download.techsmith.com/snagitmac/enu/337/snagit.dmg"
  else
    version :latest
    sha256 :no_check
    url "http://download.techsmith.com/snagitmac/enu/337/snagit.dmg"
end

    name 'Snagit'
    homepage 'https://www.techsmith.com/snagit.html'
    license :commercial
    app 'Snagit.app'
end
