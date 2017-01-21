cask 'preform' do
  version '2.10.2,454'
  sha256 '690bd4c2f17d64e8e984eee1aba8896845e5d0f422aab4c44b0ec4b3c5561465'

  # s3.amazonaws.com/FormlabsReleases was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/FormlabsReleases/Release/#{version.before_comma}/PreForm_#{version.before_comma}_release_origin_release_#{version.before_comma}_build_#{version.after_comma}.dmg"
  name 'PreForm'
  homepage 'https://formlabs.com/tools/preform/'

  app 'PreForm.app'
end
