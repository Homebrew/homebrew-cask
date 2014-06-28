class Libreoffice < Cask
  homepage 'https://www.libreoffice.org/'
  version '4.2.5'

  if Hardware::CPU.is_64_bit? && OS::Mac.version >= '10.8'
    url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
    sha256 '6a8f810d4166c2a54e3dcc9c47f6b7a1e88302c1b8ad231723e24a741b0b0480'
  else
    url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86/LibreOffice_#{version}_MacOS_x86.dmg"
    sha256 '27379af27aee1edaa76ab3cc13140c91fdf1b686c59f5bd9b7385ca0bfcbf4a6'
  end

  link 'LibreOffice.app'
end
