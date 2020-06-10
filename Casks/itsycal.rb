cask 'itsycal' do
  if MacOS.version <= :mavericks
    version '0.8.15'
    sha256 '6470719a1f702c807f98a992880def5f499858231bf35924eaf3e0d5df48b436'
  elsif MacOS.version <= :el_capitan
    version '0.10.16'
    sha256 'dbf1b104c7a3a2ca3ead9879145cb0557955c29d53f35a92b42f48e68122957c'
  elsif MacOS.version <= :high_sierra
    version '0.11.17'
    sha256 'fda1ba5611deaf4d5b834118b3af37ea9c5d08d1f8c813d04e7dd0552a270e11'
    appcast 'https://itsycal.s3.amazonaws.com/itsycal.xml'
  else
    version '0.12.3'
    sha256 'b7bda0a3f55b142dde96ea82b12934f9bcf38b7c86ad68773067133a435d76ba'
    appcast 'https://itsycal.s3.amazonaws.com/itsycal.xml'
  end

  # itsycal.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://itsycal.s3.amazonaws.com/Itsycal-#{version}.zip"
  name 'Itsycal'
  homepage 'https://www.mowglii.com/itsycal/'

  auto_updates true

  app 'Itsycal.app'

  zap trash: '~/Library/Preferences/com.mowglii.ItsycalApp.plist'
end
