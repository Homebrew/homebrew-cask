cask 'shiba' do
  version '1.0.4'
  sha256 '910aa8ad99d4f6799991cfcfa35c58cbee55f8a5b4f5c21f9242b60c90c0e96d'

  url "https://github.com/rhysd/Shiba/releases/download/v#{version}/Shiba-darwin-x64.zip"
  appcast 'https://github.com/rhysd/Shiba/releases.atom',
          checkpoint: '3ad2a278d99e59b83997ec44725908669bc1153f2282a72de59d37ae234f1e85'
  name 'Shiba'
  homepage 'https://github.com/rhysd/Shiba/'

  app 'Shiba-darwin-x64/Shiba.app'
end
