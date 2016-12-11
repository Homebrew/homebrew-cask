cask 'itsycal' do
  if MacOS.version <= :mavericks
    version '0.8.15'
    sha256 '6470719a1f702c807f98a992880def5f499858231bf35924eaf3e0d5df48b436'

    # s3.amazonaws.com/itsycal was verified as official when first introduced to the cask
    url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
  else
    version '0.11.0'
    sha256 '60ff34640b0b18e61ffe84af20d048ca20213712cfcfedae944119c346222634'

    # s3.amazonaws.com/itsycal was verified as official when first introduced to the cask
    url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
    appcast 'https://s3.amazonaws.com/itsycal/itsycal.xml',
            checkpoint: '37721ee9e4205b27db362d645a0a96ba8946f5de8b080b3b8e483c6dd981fc1a'
  end

  name 'Itsycal'
  homepage 'https://www.mowglii.com/itsycal/'

  depends_on macos: '>= :mountain_lion'

  app 'Itsycal.app'
end
