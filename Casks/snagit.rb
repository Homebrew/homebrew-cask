cask 'snagit' do
  if MacOS.release == snow_leopard
    version '2.1.7'
    sha256 :no_check
    url "http://download.techsmith.com/snagitmac/enu/217/snagit.dmg"
  else
    if MacOS.release == lion
      version '2.1.7'
      sha256 :no_check
      url "http://download.techsmith.com/snagitmac/enu/217/snagit.dmg"
    else
      if MacOS.release == mountain_lion
        version '3.2.3'
        sha256 :no_check
        url "http://download.techsmith.com/snagitmac/enu/323/snagit.dmg"
      else
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
