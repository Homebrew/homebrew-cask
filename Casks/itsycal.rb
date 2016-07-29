cask 'itsycal' do
  if MacOS.release <= :mavericks
    version '0.8.15'
    sha256 '6470719a1f702c807f98a992880def5f499858231bf35924eaf3e0d5df48b436'

    # s3.amazonaws.com/itsycal was verified as official when first introduced to the cask
    url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
  else
    version '0.10.12'
    sha256 '0ce81c7e932decb9faa8050fb6c6c713d5d30b57173b97dc51b5120d63fa7631'

    # s3.amazonaws.com/itsycal was verified as official when first introduced to the cask
    url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
    appcast 'https://s3.amazonaws.com/itsycal/itsycal.xml',
            checkpoint: '477514c570b5abeafcf1c5326b28d0cfe298033d78610b9d5d04d4efce263546'
  end

  name 'Itsycal'
  homepage 'http://www.mowglii.com/itsycal/'
  license :gratis

  depends_on macos: '>= :mountain_lion'

  app 'Itsycal.app'
end
