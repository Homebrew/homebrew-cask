cask 'gisto' do
  version '1.10.28'
  sha256 '62e292a946adc7536e11d4477e5114abada38c4417a2adcc23902c25a1942f0a'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
