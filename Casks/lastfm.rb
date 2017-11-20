cask 'lastfm' do
  version '2.1.37'
  sha256 'dc46e58111f8555fc0b1d6d2bd11e8fd4e4c45c6c7e953d106e07be8d6d8b448'

  url "https://cdn.last.fm/client/Mac/Last.fm-#{version}.zip"
  appcast 'https://cdn.last.fm/client/Mac/updates.xml',
          checkpoint: '7a9b0239c6af0128a3eff20c46c3893cee1f3a57786f6c2fca8a8df8e8993280'
  name 'Last.fm Scrobbler'
  homepage 'https://www.last.fm/'

  app 'Last.fm.app'

  zap trash: [
               '~/Library/Application Support/CrashReporter/Last.fm*',
               '~/Library/Application Support/Last.fm',
               '~/Library/Caches/fm.last.Scrobbler',
               '~/Library/Caches/Last.fm',
               '~/Library/Logs/Last.fm',
               '~/Library/Preferences/fm.last*',
             ]
end
