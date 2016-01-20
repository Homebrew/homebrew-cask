cask 'dupeguru' do
  version '3.9.1'
  sha256 '844a929ebb60f3a43a466d3ce3e5ac25b1a79c1a81ae63e19bd9356391589d56'

  url "https://download.hardcoded.net/dupeguru_osx_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.hardcoded.net/updates/dupeguru.appcast',
          checkpoint: 'bfb7c3e66f4a60fd71d31f412dd5e5921e1e20313dd4a7ee572f85d748df3a35'
  name 'dupeGuru'
  homepage 'https://www.hardcoded.net/dupeguru/'
  license :bsd

  app 'dupeGuru.app'
end
