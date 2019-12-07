cask 'gisto' do
  version '1.12.13'
  sha256 '081b1e56a45ad916dca0f7a5e303d2321ab8cbb92d6792c368365206e6dfd316'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
