cask 'sejda-pdf' do
  version '3.4.0'
  sha256 'da8d92037fb48d5794b250aa789ec616c0a865c60fda047e246f5983e9bff1c3'

  # bitbucket.org/sejdapdf/sejda-desktop-public was verified as official when first introduced to the cask
  url "https://bitbucket.org/sejdapdf/sejda-desktop-public/downloads/sejda-desktop_#{version}.dmg"
  name 'Sejda PDF Desktop'
  homepage 'https://www.sejda.com/desktop'

  app 'Sejda PDF Desktop.app'
end
