cask :v1 => 'antetype' do
  version :latest
  sha256 :no_check

  url 'https://s3.amazonaws.com/AntetypeDownload/Antetype.zip'
  homepage 'http://antetype.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Antetype.app'
end
