cask "preform" do
  version "3.11.1,709"
  sha256 "bef01369820756878ef453ec078ccf2cd0bcc1b35fc4a010113c23f61ddc52d3"

  url "https://s3.amazonaws.com/FormlabsReleases/Release/#{version.before_comma}/PreForm_#{version.before_comma}_release__build_#{version.after_comma}.dmg",
      verified: "s3.amazonaws.com/FormlabsReleases/"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://formlabs.com/download-preform-mac/"
  name "PreForm"
  desc "3D printing setup, management, and monitoring"
  homepage "https://formlabs.com/tools/preform/"

  app "PreForm.app"
end
