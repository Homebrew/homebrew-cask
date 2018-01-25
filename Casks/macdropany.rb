cask 'macdropany' do
  version '3.0.2'
  sha256 '47c842c1d525cbe012af94c3bf82d03b74a2e1f655f2a222696897c56228e974'

  url "http://downloads.zibity.com/MacDropAny/MacDropAny%20#{version}.zip"
  appcast 'http://updates.zibity.com/MacDropAny.xml',
          checkpoint: '8e0c79cd0b3dfa3239259c290c0fcd08eb6c643774f3edaa28457d1b8a77de80'
  name 'MacDropAny'
  homepage 'https://www.zibity.com/macdropany.html'

  depends_on macos: '>= :yosemite'

  app 'MacDropAny.app'

  zap trash: '~/Library/Services/Sync via MacDropAny.workflow'
end
