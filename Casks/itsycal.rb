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
    version '0.11.7'
    sha256 '30161167d4e3413c49a38b67c0a1c215d2425583fab8913c158d494dcdfac645'

    # s3.amazonaws.com/itsycal was verified as official when first introduced to the cask
    url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
    appcast 'https://s3.amazonaws.com/itsycal/itsycal.xml',
            checkpoint: '62d9f10c820439d14d33dae2d01779328ba52fd6479318c703e907cf70ac9f8b'
  end

  name 'Itsycal'
  homepage 'https://www.mowglii.com/itsycal/'

  depends_on macos: '>= :mountain_lion'

  app 'Itsycal.app'
end
