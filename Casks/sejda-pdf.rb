cask 'sejda-pdf' do
  version '3.2.5'
  sha256 'adc2012860abba6717c81ba6b6a0e260929f3234a89c7c9dc3d38cf31400bc67'

  # bitbucket.org/sejdapdf/sejda-desktop-public was verified as official when first introduced to the cask
  url "https://bitbucket.org/sejdapdf/sejda-desktop-public/downloads/sejda-desktop_#{version}.dmg"
  name 'Sejda PDF Desktop'
  homepage 'https://www.sejda.com/desktop'

  app 'Sejda PDF Desktop.app'
end
