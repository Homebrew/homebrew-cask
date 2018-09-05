cask 'amanote' do
  version '1.0.8'
  sha256 '461fa54acfe1d072ccfaf409f5b5dbf043b9e1b72571db8d1b9b8e5e05fc07fa'

  # d3p3yxvb2sk2hj.cloudfront.net/release was verified as official when first introduced to the cask
  url "https://d3p3yxvb2sk2hj.cloudfront.net/release/Amanote-#{version}.dmg"
  appcast 'https://amanote.com/assets/js/download.js'
  name 'Amanote'
  homepage 'https://amanote.com/'

  app 'Amanote.app'
end
