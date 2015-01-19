cask :v1 => 'libreoffice' do
  version '4.3.5'

  if Hardware::CPU.is_32_bit? or MacOS.release < :mountain_lion
    sha256 '0121e87396a880884a6fac02e7799fe5bc4cbfe0e346a60aa21176acbd44602f'
    # documentfoundation.org is the official download host per the vendor homepage
    url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86/LibreOffice_#{version}_MacOS_x86.dmg"
  else
    sha256 '46d33f40207fcdc8737e44ee951432727ed19788721746ea44e59cc14da15553'
    # documentfoundation.org is the official download host per the vendor homepage
    url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
  end
  gpg "#{url}.asc",
      :key_id => 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'

  homepage 'https://www.libreoffice.org/'
  license :oss

  app 'LibreOffice.app'
end
