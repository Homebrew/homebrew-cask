cask 'dupeguru' do
  version '4.0.0'
  sha256 '7af3ab5d9db7dd0dc92b6227d1ce3da046ddd41e8df6341b88e49eccf2049760'

  url "https://download.hardcoded.net/dupeguru_osx_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.hardcoded.net/updates/dupeguru.appcast',
          checkpoint: 'ae4f00a0c8a435188afcd5a7f190e430657173754b0e975c5459714f13f9c287'
  name 'dupeGuru'
  homepage 'https://www.hardcoded.net/dupeguru/'
  license :bsd

  app 'dupeGuru.app'
end
