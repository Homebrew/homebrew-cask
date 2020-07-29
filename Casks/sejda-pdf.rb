cask 'sejda-pdf' do
  version '7.0.6'
  sha256 'dad74b6f636913b8106e530b241107479a0ede7b9ae999d446e4710af393b562'

  # sejda-cdn.com/ was verified as official when first introduced to the cask
  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg"
  appcast 'https://www.sejda.com/desktop'
  name 'Sejda PDF Desktop'
  homepage 'https://www.sejda.com/desktop'

  app 'Sejda PDF Desktop.app'
end
