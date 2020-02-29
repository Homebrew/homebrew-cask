cask 'sejda-pdf' do
  version '6.0.3'
  sha256 '8eae569e0ce3dac88c8253ea328e8b94a51dcacbe2e9c9d4104c78b07348dac6'

  # sejda-cdn.com was verified as official when first introduced to the cask
  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg"
  appcast 'https://www.sejda.com/desktop'
  name 'Sejda PDF Desktop'
  homepage 'https://www.sejda.com/desktop'

  app 'Sejda PDF Desktop.app'
end
