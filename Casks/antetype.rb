cask :v1 => 'antetype' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/AntetypeDownload/Antetype.zip'
  name 'Antetype'
  homepage 'http://antetype.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Antetype.app'
end
