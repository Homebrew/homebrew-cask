cask :v1 => 'mixture' do
  version :latest
  sha256 :no_check

  url 'https://s3.amazonaws.com/mixture-mixed-app/mac/Mixture.zip'
  appcast 'https://s3.amazonaws.com/mixture-mixed-app/mac/appcast.xml'
  homepage 'http://mixture.io/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Mixture.app'
end
