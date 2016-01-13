cask 'dupeguru' do
  version '3.9.1'
  sha256 '844a929ebb60f3a43a466d3ce3e5ac25b1a79c1a81ae63e19bd9356391589d56'

  url "https://download.hardcoded.net/dupeguru_osx_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.hardcoded.net/updates/dupeguru.appcast',
          :sha256 => 'ada8199233e3b145e457d7ab21b44b093bd98b957361d52c075ce5ab699553c9'
  name 'dupeGuru'
  homepage 'https://www.hardcoded.net/dupeguru/'
  license :bsd

  app 'dupeGuru.app'
end
