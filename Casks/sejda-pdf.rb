cask 'sejda-pdf' do
  version '7.0.7'
  sha256 'fd7408f690e33b078fa88d667b5db34619c1670c6d3a96c25c2e900cee237e7b'

  # sejda-cdn.com/ was verified as official when first introduced to the cask
  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg"
  appcast 'https://www.sejda.com/desktop'
  name 'Sejda PDF Desktop'
  homepage 'https://www.sejda.com/desktop'

  app 'Sejda PDF Desktop.app'
end
