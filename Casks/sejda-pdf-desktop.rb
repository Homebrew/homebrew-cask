cask 'sejda-pdf-desktop' do
  version '2.5.2'
  sha256 '8794c77b77ed3b170b2c5d8b960d786fe4f38d5fa85310802099935619522480'

  # bitbucket.org/sejdapdf/sejda-desktop-public was verified as official when first introduced to the cask
  url "https://bitbucket.org/sejdapdf/sejda-desktop-public/downloads/sejda-desktop_#{version}.dmg"
  name 'Sejda PDF Desktop'
  homepage 'https://www.sejda.com/desktop'

  app 'Sejda PDF Desktop.app'
end
