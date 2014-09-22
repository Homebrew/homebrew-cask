class Forklift < Cask
  version '2.6.2'
  sha256 '326ef943df71204940ce1de537e00ec07724d69012901f5a967fa54747215a34'

  url "http://download.binarynights.com/ForkLift#{version}.zip"
  appcast 'http://update.binarynights.com/ForkLift2/update.xml'
  homepage 'http://www.binarynights.com/'

  app 'ForkLift.app'
end
