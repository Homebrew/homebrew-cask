cask :v1 => 'get-lyrical' do
  version :latest
  sha256 :no_check

  url 'http://shullian.com/files/getlyrical.zip'
  homepage 'http://shullian.com/get_lyrical.php'
  license :unknown    # todo: improve this machine-generated value

  app 'Get Lyrical/Get Lyrical.app'
end
