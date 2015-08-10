cask :v1 => 'ibettercharge' do
  version '1.0.9-1423225886'
  sha256 'c3be38df08b85b021a71893603deda5307011c840c3e63b611b7540dd4693a9c'

  # dl.devmate.com is the official download host per the appcast feed
  url "http://dl.devmate.com/com.softorino.iBetterCharge/#{version.sub(%r{-.*$},'')}/#{version.sub(%r{^.*?-},'')}/iBetterCharge-#{version.sub(%r{-.*$},'')}.zip"
  appcast 'http://hook.softorino.com/ibc/appcast.xml'
  name 'iBetterCharge'
  homepage 'http://softorino.com/ibettercharge/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iBetterCharge.app'
end
