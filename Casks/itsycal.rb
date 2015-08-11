cask :v1 => 'itsycal' do
  version '0.10.4'
  sha256 '0ab0895ebe56272105c3d27733c4704c954d6f606be7912291ce0908fd51689d'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
  name 'Itsycal'
  appcast 'https://s3.amazonaws.com/itsycal/itsycal.xml',
          :sha256 => '45d665b8a031eec2dc38bce1ac03feb4b57188187c4856b83d432a9d4839edf8'
  homepage 'http://www.mowglii.com/itsycal/'
  license :gratis

  app 'Itsycal.app'
end
