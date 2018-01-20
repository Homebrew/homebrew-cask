cask 'radarr' do
  version '0.2.0.870'
  sha256 '2b071f7e32595a06f4d22fa523aa1c3a5850244347bffa0890774a3b7b45eec9'

  # github.com/Radarr/Radarr was verified as official when first introduced to the cask
  url "https://github.com/Radarr/Radarr/releases/download/v#{version}/Radarr.develop.#{version}.osx-app.zip"
  appcast 'https://github.com/Radarr/Radarr/releases.atom',
          checkpoint: '4f99bfc047db51333fa4e58da7edf5a946306e39a10faa4911eac1e915b1aa76'
  name 'Radarr'
  homepage 'https://radarr.video/'

  app 'Radarr.app'
end
