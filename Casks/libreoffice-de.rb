cask :v1 => 'libreoffice-de' do
  if Hardware::CPU.is_32_bit?
    url 'http://download.documentfoundation.org/libreoffice/stable/4.4.5/mac/x86_64/LibreOffice_4.4.5_MacOS_x86-64_langpack_de.dmg'
    version '4.4.5'
    sha256 'da62a60ac5b4e74fd6c7bbedc97454e0d9649b382980a5a638a870fbb5ec1509'
  else
    url 'http://download.documentfoundation.org/libreoffice/stable/5.0.2/mac/x86_64/LibreOffice_5.0.2_MacOS_x86-64_langpack_de.dmg'
    version '5.0.2'
    sha256 '004612cff7ec7adc8c0d9d43b102cd204b5648c7b96c7eb69daf58d5bd74fa10'
  end

  name 'LibreOffice'
  homepage 'http://www.libreoffice.org/'
  license :unknown
  depends_on :cask => 'libreoffice'

  installer :manual => 'LibreOffice Language Pack.app'
end
