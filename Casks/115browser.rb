cask '115browser' do
  version '8.3.0.10'
  sha256 'e996139197874685dcfd366b12c5e5efe2ddd152f87e294ee65efd4835d459eb'

  url "https://down.115.com/client/mac/115br_v#{version}.dmg"
  appcast 'https://pc.115.com/#mac',
          checkpoint: '6f8a8353a6a9c7f9c4207c3a67a801e557eec3291d10f1bd8ed5a16821621f13'
  name '115Browser'
  name '115浏览器'
  homepage 'https://pc.115.com/'

  depends_on macos: '>= :mountain_lion'

  app '115Browser.app'

  zap delete: [
                '~/Library/Application Support/115Browser',
                '~/Library/Caches/115Browser',
                '~/Library/Caches/org.115Browser.115Browser',
                '~/Library/Preferences/org.115Browser.115Browser.plist',
                '~/Library/Saved Application State/org.115Browser.115Browser.savedState',
              ]
end
