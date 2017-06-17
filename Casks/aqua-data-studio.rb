cask 'aqua-data-studio' do
  version '18.0.14'
  sha256 '6e5f72dba68a120d75b59652aadfe2da283f0922d15e9d69df5903b987753533'

  url "http://www.aquafold.com/download/v#{version.major}.0.0/osx/ads-osx-#{version}.tar.gz"
  appcast 'http://www.aquafold.com/download/',
          checkpoint: 'c5dde3e0fbd7d9d67b3c1e13612dfa5c8c7a6705652f88599472b4a97b1a2620'
  name 'Aquafold Aqua Data Studio'
  homepage 'http://www.aquafold.com/aquadatastudio.html'

  app 'Aqua Data Studio.app'
end
