cask "appstudio" do
  version :latest
  sha256 :no_check

  # appstudio.us-east-1.linodeobjects.com/ was verified as official when first introduced to the cask
  url "https://appstudio.us-east-1.linodeobjects.com/AppStudio.dmg"
  name "NSB/AppStudio"
  homepage "https://www.nsbasic.com/"

  app "AppStudio.app"
end
