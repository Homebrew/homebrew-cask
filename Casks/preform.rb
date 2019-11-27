cask 'preform' do
  version '3.2.1,1600'
  sha256 'c13e7573ed7f1de6e2715a99dbde78f52a45593ab432c1f3d1dd17dc694aeeed'

  # s3.amazonaws.com/FormlabsReleases was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/FormlabsReleases/Release/#{version.before_comma}/PreForm_#{version.before_comma}_release_origin_testing_#{version.before_comma}_build_#{version.after_comma}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://formlabs.com/download-preform-mac/'
  name 'PreForm'
  homepage 'https://formlabs.com/tools/preform/'

  app 'PreForm.app'
end
