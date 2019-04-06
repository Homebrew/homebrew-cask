cask 'gisto' do
  version '1.11.3'
  sha256 'ba4a42f3f54e3a4f11460d5c253ae437a72f8c80400b05718f39229a14e88252'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
