cask 'double-commander' do
  version '0.7.2-6850'
  sha256 'ab2604af151e50e133d7af423a4008dd27de699e759231608f3f00f696269118'

  url "http://downloads.sourceforge.net/sourceforge/doublecmd/doublecmd-#{version}.qt.x86_64.dmg"
  name 'Double Commander'
  homepage 'http://doublecmd.sourceforge.net/'
  license :gpl

  app 'Double Commander.app'
end
