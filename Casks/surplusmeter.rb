cask :v1 => 'surplusmeter' do
  version '2.0.3'
  sha256 'a4e5fb6114983964ac4d91c3038f018a97a39f88134c776844ea27271286c375'

  url "http://www.skoobysoft.com/downloads/SurplusMeterv#{version.gsub('.','')}.dmg"
  name 'SurplusMeter'
  homepage 'http://www.skoobysoft.com/utilities/utilities.html#surplusmeter'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SurplusMeter.app'
end
