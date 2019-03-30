cask 'sejda-pdf' do
  version '5.2.7'
  sha256 '6379b4c4828e15e27418333de83fdf7025c8fb43f0c1b28c3c5bd23e551c473e'

  # sejda-cdn.com was verified as official when first introduced to the cask
  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg"
  name 'Sejda PDF Desktop'
  homepage 'https://www.sejda.com/desktop'

  app 'Sejda PDF Desktop.app'
end
