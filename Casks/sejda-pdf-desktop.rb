cask 'sejda-pdf-desktop' do
  version '2.4.0'
  sha256 '6ce9f2294310c0a663bd99564375948bec2e9984332cb1c5091068db31e23e80'

  # bitbucket.org/sejdapdf/sejda-desktop-public was verified as official when first introduced to the cask
  url "https://bitbucket.org/sejdapdf/sejda-desktop-public/downloads/sejda-desktop_#{version}.dmg"
  name 'Sejda PDF Desktop'
  homepage 'https://www.sejda.com/desktop'

  app 'Sejda PDF Desktop.app'
end
