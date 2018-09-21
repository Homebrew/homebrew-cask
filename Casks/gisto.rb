cask 'gisto' do
  version '1.10.1'
  sha256 '829e2a3bd453310aff1b35441aace0ced44bfcb789d0adae5bc5bd8636dbf325'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
