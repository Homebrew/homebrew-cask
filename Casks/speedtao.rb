cask 'speedtao' do
  version '0.9.98'
  sha256 '61481dab9265c406cadd1658add93e713e6e90d7e8fd27350a125fcd60f7c40a'

  url 'http://www.speedtao.net/beta_latest'
  appcast 'http://speedtao.net/su/su.xml',
          checkpoint: '0aa02fc70783ceebc25a3bcc16d9480395f76f44d3488e0d2127f283ded753a7'
  name 'SpeedTao'
  homepage 'http://www.speedtao.net/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SpeedTao.app'
end
