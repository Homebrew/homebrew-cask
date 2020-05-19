cask 'cooviewer' do
  version '1.2b25'
  sha256 'b085124c540ce6e7cf2f8dbf1c2a0dc7ae47133d9afbc73357ac98ea168cf09e'

  # github.com/coo-ona/cooViewer was verified as official when first introduced to the cask
  url "https://github.com/coo-ona/cooViewer/releases/download/#{version}/cooViewer.zip"
  appcast 'https://github.com/coo-ona/cooViewer/releases.atom'
  name 'cooViewer'
  homepage 'https://coo-ona.github.io/cooViewer/'

  app 'cooViewer/cooViewer.app'

  zap trash: '~/Library/Preferences/jp.coo.cooViewer.plist'
end
