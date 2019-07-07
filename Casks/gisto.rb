cask 'gisto' do
  version '1.12.5'
  sha256 'c9e70ba017ed022a17976bc6cacab495d5641b95e84ff977078493fd4eb52401'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
