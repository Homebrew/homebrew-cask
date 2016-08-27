cask 'dupeguru' do
  version '4.0.1'
  sha256 '574fb2c5043c7015c823232653e11779b201301610a1186eadf93ba4d57eb37c'

  url "https://download.hardcoded.net/dupeguru_osx_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.hardcoded.net/updates/dupeguru.appcast',
          checkpoint: 'cb2280fe270ca96b6cffee8a0ad2d817614855100e4cd0f4a6be352793e7c146'
  name 'dupeGuru'
  homepage 'https://www.hardcoded.net/dupeguru/'
  license :bsd

  app 'dupeGuru.app'
end
