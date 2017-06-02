cask 'shiba' do
  version '1.0.4'
  sha256 '910aa8ad99d4f6799991cfcfa35c58cbee55f8a5b4f5c21f9242b60c90c0e96d'

  url "https://github.com/rhysd/Shiba/releases/download/v#{version}/Shiba-darwin-x64.zip"
  appcast 'https://github.com/rhysd/Shiba/releases.atom',
          checkpoint: 'b9f739fd32d06d52e7e4d0a9e4d839fe002968972a1a6e2e4fa029acc9d067c8'
  name 'Shiba'
  homepage 'https://github.com/rhysd/Shiba/'

  app 'Shiba-darwin-x64/Shiba.app'
end
