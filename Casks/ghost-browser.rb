cask 'ghost-browser' do
  version '1.0.3.3'
  sha256 '3ffe5736563c25e834c23ba9f62e0188bb575e55df6370a56f3f13a90de40bad'

  # ghostbrowser.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://ghostbrowser.s3.amazonaws.com/GhostBrowser-#{version}.dmg"
  name 'Ghost Browser'
  homepage 'https://ghostbrowser.com'

  app 'Ghost Browser.app'
end
