cask 'preform' do
  version '2.11.1,620'
  sha256 '01c8cd1c898d04fa5ed15881bb20cd13a6af2ac3c85198b7af752126ef81b943'

  # s3.amazonaws.com/FormlabsReleases was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/FormlabsReleases/Release/#{version.before_comma}/PreForm_#{version.before_comma}_release_origin_release_#{version.before_comma}_build_#{version.after_comma}.dmg"
  name 'PreForm'
  homepage 'https://formlabs.com/tools/preform/'

  app 'PreForm.app'
end
