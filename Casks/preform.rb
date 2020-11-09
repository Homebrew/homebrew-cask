cask "preform" do
  version "3.10.1,628"
  sha256 "9cbba99df30aee45b4f78ba6c8063e3cbc859b9729c0b24649080fdd5d45b195"

  # s3.amazonaws.com/FormlabsReleases/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/FormlabsReleases/Release/#{version.before_comma}/PreForm_#{version.before_comma}_release__build_#{version.after_comma}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://formlabs.com/download-preform-mac/"
  name "PreForm"
  desc "3D printing setup, management, and monitoring"
  homepage "https://formlabs.com/tools/preform/"

  app "PreForm.app"
end
