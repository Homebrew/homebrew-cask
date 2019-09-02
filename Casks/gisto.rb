cask 'gisto' do
  version '1.12.9'
  sha256 '6bbeda48efeb733e621e2e71082becc82f2cb205a16e378d45fee2307e196fb8'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
