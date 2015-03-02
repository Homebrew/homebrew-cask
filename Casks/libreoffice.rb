cask :v1 => 'libreoffice' do
  if Hardware::CPU.is_32_bit? or MacOS.release < :mountain_lion
    version '4.3.5'
    sha256 '0121e87396a880884a6fac02e7799fe5bc4cbfe0e346a60aa21176acbd44602f'
    # documentfoundation.org is the official download host per the vendor homepage
    url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86/LibreOffice_#{version}_MacOS_x86.dmg"
  else
    version '4.4.1'
    sha256 '0bb9e740ea0bcb40402c64ee0b8c37c35fdf56997e2bf7d926b8a58640af07ab'
    # documentfoundation.org is the official download host per the vendor homepage
    url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
  end
  gpg "#{url}.asc",
      :key_id => 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'

  homepage 'https://www.libreoffice.org/'
  license :mpl

  app 'LibreOffice.app'
end
