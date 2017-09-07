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
    version '0.11.6'
    sha256 '10d83cf87400291bc04537a296eafc220144d23c736ec239109cd84c92c19837'

    # s3.amazonaws.com/itsycal was verified as official when first introduced to the cask
    url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
    appcast 'https://s3.amazonaws.com/itsycal/itsycal.xml',
            checkpoint: '9e79e40ed7cbc4ff642cbdf5d5a692f83c7d873acaf58819485cbba29305ed86'
  end

  name 'Itsycal'
  homepage 'https://www.mowglii.com/itsycal/'

  depends_on macos: '>= :mountain_lion'

  app 'Itsycal.app'
end
