cask 'mavensmate' do
  version '0.0.10'
  sha256 'd79ae6e7297939e103d637574de0a9746862d25ce4bfac34a99412dfbf609ef7'

  url "https://github.com/joeferraro/MavensMate-Desktop/releases/download/v#{version}/MavensMate-app-v#{version}-osx-x64.zip"
  appcast 'https://github.com/joeferraro/MavensMate-Desktop/releases.atom',
          checkpoint: '98c2b494c56732080d04e2deed55a044bd1ce157a84906e10178ab4002d61e41'
  name 'MavensMate'
  homepage 'https://github.com/joeferraro/MavensMate-Desktop'

  app 'MavensMate.app'
end
