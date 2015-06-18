cask :v1 => 'koko' do
  version '0.1.1'
  sha256 '0e39444b40c92eeee0488b1158c2845e7e738b276b91f6c3b0332801486a0375'

  url "https://github.com/hachibasu/koko/releases/download/v#{version}/koko-mac.zip"
  name 'Koko'
  homepage 'https://github.com/hachibasu/koko'
  license :mit

  app 'Koko.app'
end
