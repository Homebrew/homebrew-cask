cask 'gisto' do
  version '1.10.7'
  sha256 '27d9fc0cd71cb73662c8376b8e6db18042ee3ae09414e7d92376c85cce053fdb'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
