cask 'gisto' do
  version '1.10.18'
  sha256 'b09aef8ece164d564fe30f64e1e638cac17b2853d04b281dcb3a97ebd1f51d96'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
