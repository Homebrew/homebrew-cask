cask :v1 => 'speedtao' do
  version :latest
  sha256 :no_check

  url 'http://www.speedtao.net/beta_latest'
  homepage 'http://www.speedtao.net/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SpeedTao.app'
end
