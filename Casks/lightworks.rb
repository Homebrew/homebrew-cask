cask "lightworks" do
  version "2020.1.1,r124942"
  sha256 "67df2a00f290aa703fbb1e5af080ac3af57952a8ec5e14b2e98498a01d5b2857"

  url "https://cdn.lwks.com/releases/#{version.before_comma}/lightworks_#{version.before_comma}_#{version.after_comma}.dmg"
  appcast "https://www.lwks.com/index.php?option=com_lwks&view=download&Itemid=206&tab=2"
  name "Lightworks"
  desc "Complete video creation package"
  homepage "https://www.lwks.com/"

  app "Lightworks.app"

  zap trash: "~/Library/Saved Application State/com.editshare.lightworks.savedState"
end
