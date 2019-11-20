cask 'postbird' do
  version '0.8.3'
  sha256 '19f5ebcb620b480ae2652526c30724fc53ca90862db343226a3eae37ce91f3ff'

  url "https://github.com/Paxa/postbird/releases/download/#{version}/Postbird-#{version}.dmg"
  appcast 'https://github.com/Paxa/postbird/releases.atom'
  name 'Postbird'
  homepage 'https://github.com/Paxa/postbird'

  app 'Postbird.app'
end
