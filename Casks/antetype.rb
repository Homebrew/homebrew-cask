cask :v1 => 'antetype' do
  version :latest
  sha256 :no_check

  url 'https://s3.amazonaws.com/AntetypeDownload/Antetype.zip'
  homepage 'http://antetype.com'
  license :unknown

  app 'Antetype.app'
end
