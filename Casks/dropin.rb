class Dropin < Cask
  version 'latest'
  sha256 :no_check

  url 'http://excitedatom.com/downloads/dropin/?p=dropin'
  appcast 'http://excitedatom.com/dropin/updates.xml'
  homepage 'http://excitedatom.com/dropin/'

  app 'DropIn.app'
end
