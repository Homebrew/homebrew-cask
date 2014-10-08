class Libreoffice < Cask
  version '4.3.2'

  if Hardware::CPU.is_32_bit? or MacOS.version < :mountain_lion
    sha256 '5a41ebe0c09f663e2ba420e1ddd50601d0ba1c828b08eb8617e72bbeebe826a5'
    url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86/LibreOffice_#{version}_MacOS_x86.dmg"
  else
    sha256 'e5246aa91a62fcb85596ecaa16ca608e34eca79caddf529750a8126f554f97cb'
    url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
  end
  gpg "#{url}.asc",
      :key_id => 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'

  homepage 'https://www.libreoffice.org/'
  license :unknown

  app 'LibreOffice.app'
end
