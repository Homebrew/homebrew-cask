cask :v1 => 'itsycal' do
  version '0.10.5'
  sha256 '444d18a71d3c11d2de983674773ce2b8486ba45035b495648f42b21f30e09eb0'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
  name 'Itsycal'
  appcast 'https://s3.amazonaws.com/itsycal/itsycal.xml',
          :sha256 => '45d665b8a031eec2dc38bce1ac03feb4b57188187c4856b83d432a9d4839edf8'
  homepage 'http://www.mowglii.com/itsycal/'
  license :gratis

  app 'Itsycal.app'
end
