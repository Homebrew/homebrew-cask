cask 'sejda-pdf' do
  version '5.1.3'
  sha256 'decff40cc6534fb636bf2c903a33ebd66b1f2de1d38b577e1f8c8b2ab20d03a2'

  # sejda-cdn.com was verified as official when first introduced to the cask
  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg"
  name 'Sejda PDF Desktop'
  homepage 'https://www.sejda.com/desktop'

  app 'Sejda PDF Desktop.app'
end
