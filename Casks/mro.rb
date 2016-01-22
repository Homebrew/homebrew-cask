cask 'mro' do
  version '3.2.3'
  sha256 'c15ba6cd1f9fb910ef964e571c890c4a5db4f3d4c7850db5008802226c834ef0'

  url "https://mran.revolutionanalytics.com/install/mro/3.2.3/MRO-#{version}-OSX.pkg"
  name 'MRO'
  homepage 'https://mran.revolutionanalytics.com'
  license :gpl # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Microsoft R Open.app'
end
