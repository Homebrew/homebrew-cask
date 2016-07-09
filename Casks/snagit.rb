cask 'snagit' do
  if MacOS.release == :leopard
    version '1.0.4'
    sha256 :no_check
    url 'http://download.techsmith.com/snagitmac/enu/104/snagit.dmg'
  elsif MacOS.release == :snow_leopard || :lion
    version '2.1.7'
    sha256 :no_check
    url 'http://download.techsmith.com/snagitmac/enu/217/snagit.dmg'
  elsif MacOS.release == :mountain_lion
    version '3.2.3'
    sha256 :no_check
    url 'http://download.techsmith.com/snagitmac/enu/323/snagit.dmg'
  elsif MacOS.release == :mavericks
    version '3.3.7'
    sha256 :no_check
    url 'http://download.techsmith.com/snagitmac/enu/337/snagit.dmg'
  elsif MacOS.release == :yosemite
    version '4.0.3'
    sha256 :no_check
    url 'http://download.techsmith.com/snagitmac/enu/403/snagit.dmg'
  else
    version :latest
    sha256 :no_check
    url 'http://download.techsmith.com/snagitmac/enu/Snagit.dmg'
  end

  name 'Snagit'
  homepage 'https://www.techsmith.com/snagit.html'
  license :commercial

  app 'Snagit.app'
end
