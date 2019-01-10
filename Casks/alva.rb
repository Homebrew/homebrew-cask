cask 'alva' do
  version '0.9.0'
  sha256 '654436b8f86a6a9af0f94e4997d393ce16d04e4963b86b047d0d39d8c492b7f8'

  # github.com/meetalva/alva was verified as official when first introduced to the cask
  url "https://github.com/meetalva/alva/releases/download/v#{version}/Alva-#{version}-mac.zip"
  appcast 'https://github.com/meetalva/alva/releases.atom'
  name 'Alva'
  homepage 'https://meetalva.io/'

  app 'Alva.app'
end
