cask 'speedtao' do
  version :latest
  sha256 :no_check

  url 'http://www.speedtao.net/beta_latest'
  appcast 'http://speedtao.net/su/su.xml',
          :checkpoint => '5f8109674c400f16e217bfb7fab4a29af9f777f660939a40dafd44f10fd9fc7f'
  name 'SpeedTao'
  homepage 'http://www.speedtao.net/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SpeedTao.app'
end
