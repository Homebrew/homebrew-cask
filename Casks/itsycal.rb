cask 'itsycal' do
  if MacOS.version <= :mavericks
    version '0.8.15'
    sha256 '6470719a1f702c807f98a992880def5f499858231bf35924eaf3e0d5df48b436'

    # s3.amazonaws.com/itsycal was verified as official when first introduced to the cask
    url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
  else
    version '0.10.13'
    sha256 '08fa28192c4aabb9da59df02aaadc7f70718bb91a91639150d135fe76b3138cb'

    # s3.amazonaws.com/itsycal was verified as official when first introduced to the cask
    url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
    appcast 'https://s3.amazonaws.com/itsycal/itsycal.xml',
            checkpoint: 'f33285bc60a693035323edc3351994a6c58a1516647d4c246669d83abf1e8458'
  end

  name 'Itsycal'
  homepage 'https://www.mowglii.com/itsycal/'
  license :gratis

  depends_on macos: '>= :mountain_lion'

  app 'Itsycal.app'
end
