cask 'sherlock' do
  version '1.7.5'
  sha256 'd73e08704081b4b87c89a84eaa9deff4b303c2746a76b1fe56000cc1c90a34da'

  # dl.devmate.com/io.inspiredcode.Sherlock/ was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/io.inspiredcode.Sherlock/Sherlock.dmg'
  appcast 'http://sparkle.sherlock.inspiredcode.io'
  name 'Sherlock'
  homepage 'https://sherlock.inspiredcode.io/'

  depends_on macos: '>= :sierra'

  app 'Sherlock.app'
end
