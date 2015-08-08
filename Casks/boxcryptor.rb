cask :v2 => 'boxcryptor' do
  version :latest
  sha256 :no_check

  url 'https://www.boxcryptor.com/l/download-macosx'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en'
  license :commercial

  app 'Boxcryptor.app'
end
