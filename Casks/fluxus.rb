cask :v1 => 'fluxus' do
  version '0.17'
  sha256 'ee4608af10117e87a905004f2a4e3a77c1c587bb6d6d8d533e7285c2ce4d9d96'

  url 'http://mndl.hu/fluxus/fluxus-0.17-3.rc4.mac_intel.10.5.dmg.zip'
  name 'Fluxus'
  homepage 'http://www.pawfal.org/fluxus/'
  license :gpl    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  container :nested => 'fluxus-0.17-3.rc4.mac_intel.10.5.dmg'
  app 'Fluxus.app'
end
