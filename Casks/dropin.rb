cask :v1 => 'dropin' do
  version :latest
  sha256 :no_check

  url 'http://excitedatom.com/downloads/dropin/?p=dropin'
  appcast 'http://excitedatom.com/dropin/updates.xml'
  homepage 'http://excitedatom.com/dropin/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'DropIn.app'
end
