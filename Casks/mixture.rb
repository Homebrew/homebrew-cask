cask :v1 => 'mixture' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/mixture-mixed-app/mac/Mixture.zip'
  appcast 'https://s3.amazonaws.com/mixture-mixed-app/mac/appcast.xml'
  name 'Mixture'
  homepage 'http://mixture.io/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Mixture.app'
end
