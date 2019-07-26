cask 'sbrowserq' do
  version '3.6.2'
  sha256 'b848b5a2e8523359cc719decd2289b882fd687a13ab7c4711e783bbf45537085'

  url "https://www.sbrowser-q.com/SbrowserQ_V#{version.major_minor}_mac.dmg"
  appcast 'https://www.sbrowser-q.com/',
          configuration: version.major_minor
  name 'SbrowserQ'
  homepage 'https://www.sbrowser-q.com/'

  app 'SbrowserQ.app'
end
