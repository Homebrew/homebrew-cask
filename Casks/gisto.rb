cask 'gisto' do
  version '1.10.20'
  sha256 '80b92154338dc410b57f2dfef89e0523b85f53026bfc8aae6cfb3b04b9efc0bc'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
