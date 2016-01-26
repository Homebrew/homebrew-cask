cask 'skitch' do
  version '2.7.8'
  sha256 'f6e78f45434b3aac53f70aeb1e7ab9514148d1632894c73a2f06a91a04a4a2ec'

  url "https://cdn1.evernote.com/skitch/mac/release/Skitch-#{version}.zip"
  name 'Skitch'
  homepage 'https://evernote.com/skitch/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  auto_updates true

  app 'Skitch.app'

  zap delete: [
                '~/Library/Preferences/com.plasq.skitch.plist',
                '~/Library/Preferences/com.plasq.skitch.history',
              ]
end
