cask 'dupeguru' do
  version '4.0.2'
  sha256 '136abed62df1f3e34f021d305c2adbd19a2cded418b67cdfb5a6fae0d2679479'

  url "https://download.hardcoded.net/dupeguru_osx_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.hardcoded.net/updates/dupeguru.appcast',
          checkpoint: 'c47f3aefdf12fde1cace81e90677c907130d4cd85137b73c4c0eabb355249ced'
  name 'dupeGuru'
  homepage 'https://www.hardcoded.net/dupeguru/'

  app 'dupeGuru.app'
end
