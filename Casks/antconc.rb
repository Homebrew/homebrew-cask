cask 'antconc' do
  if MacOS.version <= :snow_leopard
    version '3.4.1'
    sha256 '03c353c059b8c0762b01d9be83f435321f5396cbf203bd8b36c6a56682b6a240'
  else
    version '3.5.0'
    sha256 'd79cdc444f7284c34dc51b8aebf4bdf356ef82ea6a9ad17858db083277ef5369'
  end

  url "http://www.laurenceanthony.net/software/antconc/releases/AntConc#{version.no_dots}/AntConc.zip"
  appcast 'http://www.laurenceanthony.net/software/antconc/releases/',
          checkpoint: '14a5a7f4bbde6c7e9c2856083571414a30454e7bf2f2d907935842e0490f9cf4'
  name 'AntConc'
  homepage 'http://www.laurenceanthony.net/software/antconc/'

  app 'AntConc.app'
end
