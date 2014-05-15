class Dropin < Cask
  url 'http://excitedatom.com/downloads/dropin/?p=dropin'
  appcast 'http://excitedatom.com/dropin/updates.xml'
  homepage 'http://excitedatom.com/dropin/'
  version 'latest'
  sha256 :no_check
  link 'DropIn.app'
end
