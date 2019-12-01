cask 'simplecap' do
  version '1.2.2'
  sha256 '0544a12bd7d73cf3c5a5aefed8d18c4001d11ca3c05cbcb39eb125627959015e'

  url "http://lakesoft.jp/simplecap/download/SimpleCap-#{version}.zip"
  name 'SimpleCap'
  homepage 'http://lakesoft.jp/simplecap-en/'

  app 'SimpleCap.app'
end
