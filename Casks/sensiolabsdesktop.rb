cask 'sensiolabsdesktop' do
  version '1.0.0'
  sha256 'c486439a87c7e1445f3e7dd168b7c212e27119437a94e603179c890204d90473'

  url "http://mac.desktop.sensiolabs.org/SensioLabsDesktop-#{version}.dmg"
  name 'SensioLabsDesktop'
  homepage 'http://desktop.sensiolabs.org'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SensioLabsDesktop.app'

  caveats do
    discontinued
  end
end
