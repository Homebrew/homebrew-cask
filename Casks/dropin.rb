cask :v1 => 'dropin' do
  version :latest
  sha256 :no_check

  url 'http://excitedatom.com/downloads/dropin/?p=dropin'
  appcast 'http://excitedatom.com/dropin/updates.xml'
  homepage 'http://excitedatom.com/dropin/'
  license :unknown    # todo: improve this machine-generated value

  app 'DropIn.app'
end
