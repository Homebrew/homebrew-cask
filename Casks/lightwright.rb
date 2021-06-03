cask "lightwright" do
  version "6.0.43.420"
  sha256 "ab70a8d5eda5932feee2cb68356f1ff7d167e0841ae7a482acf01aceb0078ff2"

  url "https://s3.us-east-1.amazonaws.com/lightwright-downloads/Lightwright_#{version}.dmg",
      verified: "s3.us-east-1.amazonaws.com/lightwright-downloads/"
  name "Lightwright"
  desc "Utility for generating theatrical lighting data and paperwork"
  homepage "https://www.lightwright.com/"

  livecheck do
    url "https://www.lightwright.com/api/web/public/download/getLinks"
    regex(%r{Lightwright_(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Lightwright 6.app"

  zap trash: [
    "~/Library/Application Support/com.mckernon.lightwright6",
    "/Users/Shared/Lightwright 6",
  ]
end
