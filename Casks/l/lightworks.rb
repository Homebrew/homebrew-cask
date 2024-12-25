cask "lightworks" do
  version "2025.1,149111"
  sha256 "848940400a620ccf6f178cb7962af7e0fc9f14f002d5797d3af1697baa15d307"

  url "https://cdn.lwks.com/releases/#{version.csv.first}/lightworks_#{version.csv.first.major_minor}_r#{version.csv.second}.dmg"
  name "Lightworks"
  desc "Complete video creation package"
  homepage "https://www.lwks.com/"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :big_sur"

  app "Lightworks.app"

  zap trash: "~/Library/Saved Application State/com.editshare.lightworks.savedState"

  caveats do
    requires_rosetta
  end
end
