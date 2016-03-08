cask 'swikauthor' do
  version '1.3'
  sha256 '5a891ed920678104f5afc80c8525ddca28265635af46893774d3d91c13b988c9'

  url "http://media.swikshare.com/download/SwikAuthorBeta_v#{version}.dmg"
  name 'SwikAuthor'
  homepage 'http://swikshare.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SwikAuthor.app'
end
