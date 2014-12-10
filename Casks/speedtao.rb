cask :v1 => 'speedtao' do
  version :latest
  sha256 :no_check

  url 'http://www.speedtao.net/beta_latest'
  homepage 'http://www.speedtao.net/'
  license :unknown    # todo: improve this machine-generated value

  app 'SpeedTao.app'
end
