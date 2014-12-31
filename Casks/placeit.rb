cask :v1 => 'placeit' do
  version :latest
  sha256 :no_check

  url 'http://placeit-apps.s3.amazonaws.com/Placeit-Mac.zip'
  homepage 'https://placeit.net/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Placeit.app'
end
