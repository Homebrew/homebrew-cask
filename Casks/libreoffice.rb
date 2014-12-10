cask :v1 => 'libreoffice' do
  version '4.3.4'

  if Hardware::CPU.is_32_bit? or MacOS.release < :mountain_lion
    sha256 '9e466cdd41ab29e0845267f6e46ed7c6edb79b36b4bcb121edd0df55aee4e53c'
    url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86/LibreOffice_#{version}_MacOS_x86.dmg"
  else
    sha256 '5389a93a32c7f9c6a410bee1f7ee0fa4cf0802becb6f896b663799f275b05f2e'
    url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
  end
  gpg "#{url}.asc",
      :key_id => 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'

  homepage 'https://www.libreoffice.org/'
  license :oss

  app 'LibreOffice.app'
end
