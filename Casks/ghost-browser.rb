cask 'ghost-browser' do
  version '2.1.1.9'
  sha256 'c5288a4fb4dbb570ddd5e8ecef52b56d647e2e82566ca839b6a166ce1a6d711f'

  # ghostbrowser.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://ghostbrowser.s3.amazonaws.com/downloads/GhostBrowser-#{version}.dmg"
  appcast 'https://ghostbrowser.s3.amazonaws.com/updates/changelog.html'
  name 'Ghost Browser'
  homepage 'https://ghostbrowser.com/download/'

  app 'Ghost Browser.app'
end
