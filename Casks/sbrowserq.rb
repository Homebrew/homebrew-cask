cask 'sbrowserq' do
  version '3.5'
  sha256 'd62efea257215b019421f13b947e4dcb161fb35e1694454b140dc70c5f0fef99'

  url "https://www.sbrowser-q.com/SbrowserQ_V#{version}_mac.dmg"
  name 'SbrowserQ'
  homepage 'https://www.sbrowser-q.com/'

  app 'SbrowserQ.app'
end
