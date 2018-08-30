cask 'gisto' do
  version '1.9.85'
  sha256 'f1048b2f06a0e8016ebd5911b83eda604686f57bfed8d3bd6baa2974ce2059f0'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
