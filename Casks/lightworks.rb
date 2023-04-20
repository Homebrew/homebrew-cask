cask "lightworks" do
  version "2022.3,138192"
  sha256 "040c8e1a77beab59c142771e5200f6ce2a69eefbd12111880ff2c4ea4194da2d"

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
