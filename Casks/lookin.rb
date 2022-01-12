cask "lookin" do
  version "1.0.0,7"
  sha256 "298d9923ecd3d3771bcac0d375dcdfed66038bec8a13705de66efa3896a53be7"

  url "https://cdn.lookin.work/release/Lookin-#{version.csv.first.dots_to_hyphens}.zip"
  name "Lookin"
  homepage "https://lookin.work/"

  livecheck do
    url "https://lookin.work/release/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Lookin.app"
end
