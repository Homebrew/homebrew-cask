cask 'nibbble' do
  if MacOS.release <= :lion
    version :latest
    sha256 :no_check
    url 'http://uglyapps.co.uk/nibbble/nibbble.zip'
  else
    version '1.2'
    sha256 '7e6bff1d0ab8951c528cbe0ae34c01f890f9e02a52fa18940174cbe965eab5d4'
    url "http://uglyapps.co.uk/nibbble/nibbble.#{version}.zip"
  end

  name 'Nibbble'
  homepage 'http://uglyapps.co.uk/nibbble/'
  license :gratis

  screen_saver 'Nibbble.saver'
end
