cask 'dbeaver-community' do
  version '4.1.1'
  sha256 '2b352d3423ed1ce4e4fb22f362f8951d2bf8184c5ef8fe287cca29daebc2d639'

  # github.com/serge-rider/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/serge-rider/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/serge-rider/dbeaver/releases.atom',
          checkpoint: '5dad4cf7af76ac761e8a9ef2dba8a28477debfed3c97a5c69f48abaef51cdead'
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
