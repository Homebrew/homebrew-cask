cask 'swikauthor' do
  version '1.3'
  sha256 '5a891ed920678104f5afc80c8525ddca28265635af46893774d3d91c13b988c9'

  url "http://media.swikshare.com/download/SwikAuthorBeta_v#{version}.dmg"
  appcast 'http://swikshare.com/',
          checkpoint: 'ea6f92d0460639ec716f709c86ce16e784eb9b699a1e8be47342fac23404d0d6'
  name 'SwikAuthor'
  homepage 'http://swikshare.com/'

  app 'SwikAuthor.app'
end
