cask :v1 => 'antetype' do
  version :latest
  sha256 :no_check

  url 'https://s3.amazonaws.com/AntetypeDownload/Antetype.zip'
  name 'Antetype'
  homepage 'http://antetype.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Antetype.app'
end
