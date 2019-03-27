cask 'gisto' do
  version '1.11.1'
  sha256 '5113c3c4bc6556f2e6f02d5b929127d323e171298c481fcfe189a083ec3a18f3'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
