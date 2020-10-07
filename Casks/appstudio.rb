cask "appstudio" do
  version :latest
  sha256 :no_check

  # appstudio.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://appstudio.s3.amazonaws.com/AppStudio.dmg"
  name "NSB/AppStudio"
  homepage "https://www.nsbasic.com/"

  app "AppStudio.app"
end
