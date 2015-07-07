cask :v1 => 'speedlimit' do
  version :latest
  sha256 :no_check

  url 'https://mschrag.github.io/speedlimit/SpeedLimit.prefPane.zip'
  name 'speedlimit'
  homepage 'https://mschrag.github.io/'
  license :oss

  prefpane 'SpeedLimit.prefPane'
end
