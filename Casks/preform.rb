cask "preform" do
  version "3.8.0,513"
  sha256 "cdbccb5b2b1c969646be1c8efe3bb56f123703d9b8dad274b4c3bfc967a7a114"

  # s3.amazonaws.com/FormlabsReleases/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/FormlabsReleases/Release/#{version.before_comma}/PreForm_#{version.before_comma}_release_origin_release_#{version.before_comma}_build_#{version.after_comma}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://formlabs.com/download-preform-mac/"
  name "PreForm"
  homepage "https://formlabs.com/tools/preform/"

  app "PreForm.app"
end
