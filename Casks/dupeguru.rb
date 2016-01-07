cask 'dupeguru' do
  version '3.9.1'
  sha256 '844a929ebb60f3a43a466d3ce3e5ac25b1a79c1a81ae63e19bd9356391589d56'

  url "https://download.hardcoded.net/dupeguru_osx_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.hardcoded.net/updates/dupeguru.appcast',
          :sha256 => '24be8a07f647d750eaab5696b7bfd6a739ac8fddd90e04d248f11c2f125a4285'
  name 'dupeGuru'
  homepage 'https://www.hardcoded.net/dupeguru/'
  license :bsd

  app 'dupeGuru.app'
end
