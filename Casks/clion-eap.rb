cask :v1 => 'clion-eap' do
  version '138.2344.17'
  sha256 '4d15bd684f23add653b3a4ddea13f1d26931769aefd65936b63b96839b089a1e'

  url "http://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  homepage 'http://www.jetbrains.com/clion/'
  license :unknown

  app 'CLion EAP.app'
end
