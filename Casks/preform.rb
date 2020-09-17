cask "preform" do
  version "3.8.1,544"
  sha256 "68e8db80d2086a978644407725795f27bac7c23f685f2e2b674f01f74c20ba23"

  # s3.amazonaws.com/FormlabsReleases/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/FormlabsReleases/Release/#{version.before_comma}/PreForm_#{version.before_comma}_release_origin_testing_#{version.before_comma}_build_#{version.after_comma}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://formlabs.com/download-preform-mac/"
  name "PreForm"
  homepage "https://formlabs.com/tools/preform/"

  app "PreForm.app"
end
