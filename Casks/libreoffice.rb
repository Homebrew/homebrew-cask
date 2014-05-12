class Libreoffice < Cask
  if Hardware::CPU.is_64_bit? && OS::Mac.version >= '10.8'
    url 'http://download.documentfoundation.org/libreoffice/stable/4.2.3/mac/x86_64/LibreOffice_4.2.3_MacOS_x86-64.dmg'
    sha256 'b54917f4784b17c2c6a0778559f3f9de03480bc4528b181681336d9cc2dba904'
  else
    url 'http://download.documentfoundation.org/libreoffice/stable/4.2.3/mac/x86/LibreOffice_4.2.3_MacOS_x86.dmg'
    sha256 '6b5bf833824076acf0cdb86b869ba418043295855f1a539fa0d7bf18eba3de13'
  end

  homepage 'http://www.libreoffice.org/'
  version '4.2.3'
  link 'LibreOffice.app'
end
