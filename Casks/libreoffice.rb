class Libreoffice < Cask
  homepage 'https://www.libreoffice.org/'
  version '4.3.0'

  if Hardware::CPU.is_32_bit? or MacOS.version < :mountain_lion
    url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86/LibreOffice_#{version}_MacOS_x86.dmg"
    sha256 '31b84237db80f655aabcc3962c4a5e4fd84318adb6db1b3b311a883f16af1164'
  else
    url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
    sha256 '80772ed238b2033233aa2867962cfbb6f701ae81b3f592971149f8e3e54504bf'
  end

  link 'LibreOffice.app'
end
