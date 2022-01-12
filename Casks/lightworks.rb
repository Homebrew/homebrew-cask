cask "lightworks" do
  version "2021.3,130952"
  sha256 "3dc547e42a9087d19af0ca6371893336822f9d312036c7115e96c44da728c594"

  url "https://cdn.lwks.com/releases/#{version.csv.first}/lightworks_#{version.csv.first.major_minor}_r#{version.csv.second}.dmg"
  name "Lightworks"
  desc "Complete video creation package"
  homepage "https://www.lwks.com/"

  livecheck do
    skip "No version information available"
  end

  app "Lightworks.app"

  zap trash: "~/Library/Saved Application State/com.editshare.lightworks.savedState"
end
