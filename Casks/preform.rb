cask 'preform' do
  version '3.4.5,289'
  sha256 '599235b62eb4faeeb9a046de551eb73c40be06d3d665b5e1854bd90b8b6540a6'

  # s3.amazonaws.com/FormlabsReleases/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/FormlabsReleases/Release/#{version.before_comma}/PreForm_#{version.before_comma}_release_origin_testing_#{version.before_comma}_build_#{version.after_comma}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://formlabs.com/download-preform-mac/'
  name 'PreForm'
  homepage 'https://formlabs.com/tools/preform/'

  app 'PreForm.app'
end
