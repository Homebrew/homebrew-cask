cask :v1 => 'itools' do
  version '2.4.5'
  sha256 'fb73ea017f07bcc1ab0f8cb872ac5eb896c275e417b0118af433e2a00c9b8061'

  # itools.hk is the official download host per the vendor homepage
  url "http://dl2.itools.hk/dl/iTools_#{version}.dmg"
  name 'iTools'
  homepage 'http://pro.itools.cn/mac'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iTools.app'
end
