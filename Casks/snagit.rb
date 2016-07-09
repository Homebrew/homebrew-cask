cask 'snagit' do
#Mac OS version check
  if Mac.OS <= :lion #for 10.6 and 10.7 (10.6 and before cannot run brew)
    version '2.1.7'
    sha256 :no_check
    url "http://download.techsmith.com/snagitmac/enu/217/snagit.dmg"
  else
    if Mac.OS <= :mountain_lion #for 10.8
      version '3.2.3'
      sha256 :no_check
      url "http://download.techsmith.com/snagitmac/enu/323/snagit.dmg"
    else
      if Mac.OS <= :mavericks #for 10.9
        version '3.3.7'
        sha256 :no_check
        url "http://download.techsmith.com/snagitmac/enu/337/snagit.dmg"
      else #for 10.10 and above (soon, 10.10 will be removed)
        version :latest
        sha256 :no_check
  
        url 'http://download.techsmith.com/snagitmac/enu/Snagit.dmg'
      end
#Name for app
    name 'Snagit'
    homepage 'https://www.techsmith.com/snagit.html'
    license :commercial
    app 'Snagit.app'
end
