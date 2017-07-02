cask 'itsycal' do
  if MacOS.version <= :mavericks
    version '0.8.15'
    sha256 '6470719a1f702c807f98a992880def5f499858231bf35924eaf3e0d5df48b436'

    # s3.amazonaws.com/itsycal was verified as official when first introduced to the cask
    url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
  elsif MacOS.version <= :el_capitan
    version '0.10.16'
    sha256 'dbf1b104c7a3a2ca3ead9879145cb0557955c29d53f35a92b42f48e68122957c'

    # s3.amazonaws.com/itsycal was verified as official when first introduced to the cask
    url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
  else
    version '0.11.4'
    sha256 '145913bacd6089980485b9d33787fb91847127ee9fed0e2bfe16a7e6691f9ea0'

    # s3.amazonaws.com/itsycal was verified as official when first introduced to the cask
    url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
    appcast 'https://s3.amazonaws.com/itsycal/itsycal.xml',
            checkpoint: '91a8899f47d78263a9b8ee51d816346ac2298d2310b820dd7918483598c0f642'
  end

  name 'Itsycal'
  homepage 'https://www.mowglii.com/itsycal/'

  depends_on macos: '>= :mountain_lion'

  app 'Itsycal.app'
end
