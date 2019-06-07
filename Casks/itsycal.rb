cask 'itsycal' do
  if MacOS.version <= :mavericks
    version '0.8.15'
    sha256 '6470719a1f702c807f98a992880def5f499858231bf35924eaf3e0d5df48b436'

    # itsycal.s3.amazonaws.com was verified as official when first introduced to the cask
    url "https://itsycal.s3.amazonaws.com/Itsycal-#{version}.zip"
  elsif MacOS.version <= :el_capitan
    version '0.10.16'
    sha256 'dbf1b104c7a3a2ca3ead9879145cb0557955c29d53f35a92b42f48e68122957c'

    # itsycal.s3.amazonaws.com was verified as official when first introduced to the cask
    url "https://itsycal.s3.amazonaws.com/Itsycal-#{version}.zip"
  else
    version '0.11.14'
    sha256 'a10e372196bbcf433e982a54fdc874bc6bbebb8f6a3f9c1bd1c91efef35923b6'

    # itsycal.s3.amazonaws.com was verified as official when first introduced to the cask
    url "https://itsycal.s3.amazonaws.com/Itsycal-#{version}.zip"
    appcast 'https://itsycal.s3.amazonaws.com/itsycal.xml'
  end

  name 'Itsycal'
  homepage 'https://www.mowglii.com/itsycal/'

  app 'Itsycal.app'

  uninstall login_item: 'Itsycal'

  zap trash: '~/Library/Preferences/com.mowglii.ItsycalApp.plist'
end
