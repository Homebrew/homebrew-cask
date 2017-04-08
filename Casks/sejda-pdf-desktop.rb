cask 'sejda-pdf-desktop' do
  version '2.5.0'
  sha256 'ec2dc5dcfea0dad3ef620ebdbd6d54b314b186cecd8ee7612431f14d18f06c83'

  # bitbucket.org/sejdapdf/sejda-desktop-public was verified as official when first introduced to the cask
  url "https://bitbucket.org/sejdapdf/sejda-desktop-public/downloads/sejda-desktop_#{version}.dmg"
  name 'Sejda PDF Desktop'
  homepage 'https://www.sejda.com/desktop'

  app 'Sejda PDF Desktop.app'
end
