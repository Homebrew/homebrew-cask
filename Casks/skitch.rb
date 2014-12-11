cask :v1 => 'skitch' do
  version '2.7.6'
  sha256 '9734154ad202152f24de7730a43cf463a93606623a6e992508724542c9de8178'

  url "http://cdn1.evernote.com/skitch/mac/release/Skitch-#{version}.zip"
  homepage 'http://evernote.com/skitch/'
  license :unknown    # todo: improve this machine-generated value

  app 'Skitch.app'

  zap :delete => [
                  '~/Library/Preferences/com.plasq.skitch.plist',
                  '~/Library/Preferences/com.plasq.skitch.history',
                 ]
end
