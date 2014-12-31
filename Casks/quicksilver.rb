cask :v1 => 'quicksilver' do
  version '1.2.2'
  sha256 'bd11b3671ddc104e80ceefd017aae137f9f09e021f8f0af0c8c905130e329d85'

  url 'http://cdn.qsapp.com/plugins/files/com.blacktree.Quicksilver__16401.dmg'
  homepage 'http://qsapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Quicksilver.app'

  zap :delete => [
                  '~/Library/Preferences/com.blacktree.Quicksilver.plist',
                  '~/Library/Application Support/Quicksilver',
                 ]
end
