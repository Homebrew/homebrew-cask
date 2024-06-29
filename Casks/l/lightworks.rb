cask "lightworks" do
  version "2023.2,146471"
  sha256 "663a74cb22a4b6bbd6e5543881d573de1b94630cb48e2ee797b47a848487d6f2"

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
