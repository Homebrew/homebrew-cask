cask :v1 => 'spacious' do
  version :latest
  sha256 :no_check

  url 'http://static.iospirit.com/static/objectfiles/file/159/Spacious.zip'
  homepage 'http://www.iospirit.com/products/spacious'
  license :unknown    # todo: improve this machine-generated value

  app 'Spacious.app'
end
