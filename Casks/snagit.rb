cask 'snagit' do
#Mac OS version check
=begin
  if MacOS.release <= :lion #for 10.6 and 10.7 (10.6 and before cannot run brew)
    version '2.1.7'
    sha256 :no_check
    url "http://download.techsmith.com/snagitmac/enu/217/snagit.dmg"
  else
=end

cask 'appcleaner' do
  if MacOS.release <= :lion
    version '3.2.3'
    url "http://download.techsmith.com/snagitmac/enu/323/snagit.dmg"
  else
    if MacOS.release <= :mavericks
      version '3.3.7'
      sha256 '69da212e2972e23e361c93049e4b4505d7f226aff8652192125f078be7eecf7f'
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
