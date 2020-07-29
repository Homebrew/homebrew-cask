cask 'preform' do
  version '3.5.2,371'
  sha256 '7d823d863da9e31a111d0064c321723b68ef23c114fd0ea887c47b663260c490'

  # s3.amazonaws.com/FormlabsReleases/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/FormlabsReleases/Release/#{version.before_comma}/PreForm_#{version.before_comma}_release_origin_release_#{version.before_comma}_build_#{version.after_comma}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://formlabs.com/download-preform-mac/'
  name 'PreForm'
  homepage 'https://formlabs.com/tools/preform/'

  app 'PreForm.app'
end
