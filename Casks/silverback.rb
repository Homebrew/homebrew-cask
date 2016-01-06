cask 'silverback' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://silverback.s3.amazonaws.com/silverback2.zip'
  appcast 'https://silverback.s3.amazonaws.com/release/appcast.xml',
          :sha256 => '2bb39c1338616d3978a2b252e840c4b15f1682cbf6098235e761163021e16b84'
  name 'Silverback'
  homepage 'http://silverbackapp.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Silverback.app'
end
