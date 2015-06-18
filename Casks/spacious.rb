cask :v1 => 'spacious' do
  version :latest
  sha256 :no_check

  url 'https://www.iospirit.com/static/objectfiles/file/159/Spacious.zip'
  name 'Spacious'
  homepage 'https://www.iospirit.com/products/spacious'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Spacious.app'
end
