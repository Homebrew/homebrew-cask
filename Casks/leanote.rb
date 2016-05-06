cask 'leanote' do
  version '1.0.7'
  sha256 'bdcaf67fb40f1b2477843ea2a51580ab9c1520bff8ee04e0b4a929a57e67cbf9'

  # download.sourceforge.net/sourceforge/leanote-desktop-app was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/leanote-desktop-app/leanote-desktop-mac-v#{version}.zip"
  appcast 'https://github.com/leanote/desktop-app/releases.atom',
          checkpoint: '9309addba49ca9a33306f607d259cd793d4dfe92f98761a36ab4405a1d146666'
  name 'Leanote'
  homepage 'http://leanote.org'
  license :gpl

  app 'Leanote.app'
end
