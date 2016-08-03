cask 'squeak' do
  version '5.0'
  sha256 '38fa71fac58770047636b7ee37d4c88989da90f6b748cb53667099edf07c3390'

  url 'http://files.squeak.org/5.0/Squeak-5.0-All-in-One.zip'
  name 'Squeak'
  homepage 'http://squeak.org'
  license :oss # Apache + MIT

  app 'Squeak-5.0-All-in-One/Squeak-5.0-All-in-One.app'

  zap delete: [
                '~/Library/Saved Application State/org.squeak.SqueakAllInOne45.savedState/',
              ]
end
