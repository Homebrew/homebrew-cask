cask :v1 => 'itools' do
  version '2.4.4'
  sha256 '4ea6717d78d8e782fcd41fe10ff0e44d6a6cac5dfa1fcfd08176889b2f55334a'

  # itools.hk is the official download host per the vendor homepage
  url "http://dl2.itools.hk/dl/iTools_#{version}.dmg"
  name 'iTools'
  homepage 'http://pro.itools.cn/mac'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iTools.app'
end
