cask 'gisto' do
  version '1.12.14'
  sha256 'c13c2751af75a12b63d52b3874c6cfdb55ce380a842bab599fe788cd3379d7aa'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
