cask 'awips-python' do
  version :latest
  sha256 :no_check

  url 'https://www.unidata.ucar.edu/downloads/awips2/awips-python.pkg'
  name 'AWIPS Python'
  homepage 'https://www.unidata.ucar.edu/software/awips2/'

  pkg 'awips-python.pkg'

  uninstall pkgutil: 'com.mygreatcompany.pkg.aiwps-python'
end
