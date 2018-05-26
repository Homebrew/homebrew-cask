cask 'remembear' do
  version '1.0.2'
  sha256 '8291ca68a05870cb7d4ac48937ad2da5e9469b39b0088d96e9a31479c846af2d'

  # s3.amazonaws.com/remembear was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/remembear/app/release/downloads/macOS/RememBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/remembear/app/release/downloads/macOS/appcast.xml',
          checkpoint: '10e72b0e82b2200ff34d82baafe4b6c043319ef25c854d9efb47ee3ba4e97fd9'
  name 'RememBear'
  homepage 'https://www.remembear.com/'

  app 'RememBear.app'
end
