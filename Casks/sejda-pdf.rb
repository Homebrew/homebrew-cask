cask 'sejda-pdf' do
  version '6.0.6'
  sha256 '1554405d322e23dd8d18550306139c49af24d50c2c67e47a6f0f81e0e1996ad8'

  # sejda-cdn.com/ was verified as official when first introduced to the cask
  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg"
  appcast 'https://www.sejda.com/desktop'
  name 'Sejda PDF Desktop'
  homepage 'https://www.sejda.com/desktop'

  app 'Sejda PDF Desktop.app'
end
