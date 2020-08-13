cask "appstudio" do
  version :latest
  sha256 :no_check

  # dropbox.com/s/27y2gzzd8f6sm1p/ was verified as official when first introduced to the cask
  url "https://www.dropbox.com/s/27y2gzzd8f6sm1p/AppStudio.dmg?dl=1"
  name "NSB/AppStudio"
  homepage "https://www.nsbasic.com/"

  app "AppStudio.app"
end
