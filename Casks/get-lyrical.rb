cask :v1 => 'get-lyrical' do
  version :latest
  sha256 :no_check

  url 'http://shullian.com/files/getlyrical.zip'
  homepage 'http://shullian.com/get_lyrical.php'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Get Lyrical/Get Lyrical.app'
end
