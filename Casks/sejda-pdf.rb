cask 'sejda-pdf' do
  version '4.5.2'
  sha256 'b9f707bfb328488b52c2d998c7a8addffa92b34985296f24b645a34508e463c6'

  # bitbucket.org/sejdapdf/sejda-desktop-public was verified as official when first introduced to the cask
  url "https://bitbucket.org/sejdapdf/sejda-desktop-public/downloads/sejda-desktop_#{version}.dmg"
  name 'Sejda PDF Desktop'
  homepage 'https://www.sejda.com/desktop'

  app 'Sejda PDF Desktop.app'
end
