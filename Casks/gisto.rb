cask 'gisto' do
  version '1.10.12'
  sha256 '12917b25ae9e1298d703f1a3e6e2a51d8671fcd3f2def4dd216108a312572a2f'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
