cask 'aqua-data-studio' do
  version '18.0.12'
  sha256 '1f7490c75e72baf1a37bae3dff97f3db60d7ac4c116f7270b9413ce1ecbf4bca'

  url "http://www.aquafold.com/download/v#{version.major}.0.0/osx/ads-osx-#{version}.tar.gz"
  appcast 'http://www.aquafold.com/download/',
          checkpoint: 'c6d6214937a9956254f981bc650e2dd0aa6fc9c49d9f36214074d36748b19d56'
  name 'Aquafold Aqua Data Studio'
  homepage 'http://www.aquafold.com/aquadatastudio.html'

  app 'Aqua Data Studio.app'
end
