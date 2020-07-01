cask 'preform' do
  version '3.6.1,406'
  sha256 '55aa1bc09cfb93045f61e44d823d43f71728078bc161bc9eb29cbe1033648b0e'

  # s3.amazonaws.com/FormlabsReleases/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/FormlabsReleases/Release/#{version.before_comma}/PreForm_#{version.before_comma}_release_origin_release_#{version.before_comma}_build_#{version.after_comma}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://formlabs.com/download-preform-mac/'
  name 'PreForm'
  homepage 'https://formlabs.com/tools/preform/'

  app 'PreForm.app'
end
