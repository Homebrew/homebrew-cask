cask 'speedtao' do
  version :latest
  sha256 :no_check

  url 'http://www.speedtao.net/beta_latest'
  appcast 'http://speedtao.net/su/su.xml',
          :sha256 => '335236df2877584cd9515ecd53a9c1dcc680182511665455a1cffd505f8769fe'
  name 'SpeedTao'
  homepage 'http://www.speedtao.net/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SpeedTao.app'
end
