cask 'sejda-pdf' do
  version '5.3.5'
  sha256 '4a61e0eafcaedbbce9df62faf67d87d4e24189d061f8dbf02db2d7dff17d0e13'

  # sejda-cdn.com was verified as official when first introduced to the cask
  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg"
  name 'Sejda PDF Desktop'
  homepage 'https://www.sejda.com/desktop'

  app 'Sejda PDF Desktop.app'
end
