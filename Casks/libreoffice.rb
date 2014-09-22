class Libreoffice < Cask
  homepage 'https://www.libreoffice.org/'
  version '4.3.1'

  if Hardware::CPU.is_32_bit? or MacOS.version < :mountain_lion
    url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86/LibreOffice_#{version}_MacOS_x86.dmg"
    sha256 'a2d507f643b952282ff5ce90ac227bea9bd412748ffcb93050db75256b2f803c'
  else
    url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
    sha256 '9a212ca4b77770c57f8b7ac375b5a98824c93dabd6e238dc019dc1139b6d3b7f'
  end

  app 'LibreOffice.app'
end
