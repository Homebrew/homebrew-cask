cask 'fluxus' do
  version '0.17-3.rc4'
  sha256 'ee4608af10117e87a905004f2a4e3a77c1c587bb6d6d8d533e7285c2ce4d9d96'

  url "http://mndl.hu/fluxus/fluxus-#{version}.mac_intel.10.5.dmg.zip"
  name 'Fluxus'
  homepage 'http://www.pawfal.org/fluxus/'
  license :gpl

  container nested: "fluxus-#{version}.mac_intel.10.5.dmg"

  app 'Fluxus.app'
end
