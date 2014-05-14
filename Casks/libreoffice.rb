class Libreoffice < Cask
  if Hardware::CPU.is_64_bit? && OS::Mac.version >= '10.8'
    url 'http://download.documentfoundation.org/libreoffice/stable/4.2.4/mac/x86_64/LibreOffice_4.2.4_MacOS_x86-64.dmg'
    sha256 '727aef1ab9010e133ee46fc4ceb9ad7573f9c97d49c30ee169ad98100bb90fc8'
  else
    url 'http://download.documentfoundation.org/libreoffice/stable/4.2.4/mac/x86/LibreOffice_4.2.4_MacOS_x86.dmg'
    sha256 '40a9dd187dfe5260d405f502a78ed2d46d309a85f64fe896f1e5e6db136e547c'
  end

  homepage 'http://www.libreoffice.org/'
  version '4.2.4'
  link 'LibreOffice.app'
end
