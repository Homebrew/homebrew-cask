cask 'speedtao' do
  version :latest
  sha256 :no_check

  url 'http://www.speedtao.net/beta_latest'
  appcast 'http://speedtao.net/su/su.xml',
          :checkpoint => '0aa02fc70783ceebc25a3bcc16d9480395f76f44d3488e0d2127f283ded753a7'
  name 'SpeedTao'
  homepage 'http://www.speedtao.net/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SpeedTao.app'
end
