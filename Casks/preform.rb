cask "preform" do
  version "3.7.1,481"
  sha256 "f33e385d6cef90e0ad7f04d933404ccf3997ae52a2504b420a01730f998bf04a"

  # s3.amazonaws.com/FormlabsReleases/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/FormlabsReleases/Release/#{version.before_comma}/PreForm_#{version.before_comma}_release_origin_release_#{version.before_comma}_build_#{version.after_comma}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://formlabs.com/download-preform-mac/"
  name "PreForm"
  homepage "https://formlabs.com/tools/preform/"

  app "PreForm.app"
end
