cask :v1 => 'libreoffice' do
  version '4.3.3'

  if Hardware::CPU.is_32_bit? or MacOS.version < :mountain_lion
    sha256 '3e3e625d4b4bf69dcbe8c0a0b93aa1b8d5c318c74b43f51d3b895d9d43d2a642'
    url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86/LibreOffice_#{version}_MacOS_x86.dmg"
  else
    sha256 '3da0e892a746166ba3ae2288fd8d0cff4e5da8c5d0aa035da0bbc075e63bff8f'
    url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
  end
  gpg "#{url}.asc",
      :key_id => 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'

  homepage 'https://www.libreoffice.org/'
  license :unknown

  app 'LibreOffice.app'
end
