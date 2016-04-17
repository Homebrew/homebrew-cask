cask 'itsycal' do
  version '0.10.11'
  sha256 'f947f163cbdcc302805a75c217f6649fd92387f1859a946518603c92b28e0e71'

  # s3.amazonaws.com/itsycal was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
  appcast 'https://s3.amazonaws.com/itsycal/itsycal.xml',
          checkpoint: '66a7a4499361429412e40c85c36c74d84a6ee88b3aa089c14373df44081eb991'
  name 'Itsycal'
  homepage 'http://www.mowglii.com/itsycal/'
  license :gratis

  app 'Itsycal.app'
end
