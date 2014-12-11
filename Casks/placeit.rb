cask :v1 => 'placeit' do
  version :latest
  sha256 :no_check

  url 'http://placeit-apps.s3.amazonaws.com/Placeit-Mac.zip'
  homepage 'https://placeit.net/'
  license :unknown    # todo: improve this machine-generated value

  app 'Placeit.app'
end
