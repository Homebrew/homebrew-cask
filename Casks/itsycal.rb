cask 'itsycal' do
  if MacOS.version <= :mavericks
    version '0.8.15'
    sha256 '6470719a1f702c807f98a992880def5f499858231bf35924eaf3e0d5df48b436'

    # s3.amazonaws.com/itsycal was verified as official when first introduced to the cask
    url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
  else
    version '0.10.14'
    sha256 '8b144c34794ab66c50f8be940385ef9e1fbfa700f85aa99ed6c60d1037e2fee1'

    # s3.amazonaws.com/itsycal was verified as official when first introduced to the cask
    url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
    appcast 'https://s3.amazonaws.com/itsycal/itsycal.xml',
            checkpoint: 'ec27be0f98e5f0e0fc4b89f9fea467345eac7ab0eff97e664e88b69ac1e5f309'
  end

  name 'Itsycal'
  homepage 'https://www.mowglii.com/itsycal/'
  license :gratis

  depends_on macos: '>= :mountain_lion'

  app 'Itsycal.app'
end
