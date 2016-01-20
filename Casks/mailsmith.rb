cask 'mailsmith' do
  version '2.4_470'
  sha256 '5a599ceb64cb5d4410a26da3029e2e2ffa3eefd1efaf317cd33344ceccb059a2'

  url "http://www.mailsmith.org/files/mailsmith-#{version.delete('.')}.dmg"
  appcast 'http://www.mailsmith.org/files/MailsmithSUFeed.xml',
          checkpoint: '8a01c594f885a7e898f802707bdf105cec9aec3390138ba851353ca80d363bf5'
  name 'Mailsmith'
  homepage 'http://www.mailsmith.org/'
  license :gratis

  app 'Mailsmith.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/Library/Application Support/Mailsmith',
                '~/Library/Caches/com.barebones.mailsmith',
                '~/Library/Logs/Mailsmith',
                '~/Library/Preferences/com.barebones.mailsmith.plist',
                '~/Library/Preferences/com.barebones.mailsmith.PreferenceData',
                '~/Library/Saved Application State/com.barebones.mailsmith.savedState',
              ]
end
