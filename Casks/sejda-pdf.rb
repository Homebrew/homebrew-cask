cask 'sejda-pdf' do
  version '3.1.0'
  sha256 'e88105fa61ebf1d9c7c4a21dc85abaaf9c3fdbdf723e031c893b376bf968fa49'

  # bitbucket.org/sejdapdf/sejda-desktop-public was verified as official when first introduced to the cask
  url "https://bitbucket.org/sejdapdf/sejda-desktop-public/downloads/sejda-desktop_#{version}.dmg"
  name 'Sejda PDF Desktop'
  homepage 'https://www.sejda.com/desktop'

  app 'Sejda PDF Desktop.app'
end
