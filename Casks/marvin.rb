cask "marvin" do
  version "1.62.0"
  sha256 "296981ecc8d81f54308b7ec0867515736f56de207429e79577ad66888fb773ce"

  url "https://amazingmarvin.s3.amazonaws.com/Marvin-#{version}.dmg",
      verified: "amazingmarvin.s3.amazonaws.com/"
  name "Amazing Marvin"
  desc "Personal productivity app"
  homepage "https://www.amazingmarvin.com/"

  livecheck do
    url "http://amazingmarvin.s3-website-us-east-1.amazonaws.com/Marvin.dmg"
    strategy :header_match
  end

  app "Marvin.app"

  zap trash: [
    "~/Library/Application Support/Marvin",
    "~/Library/Logs/Marvin",
    "~/Library/Preferences/com.amazingmarvin.marvindesktop.plist",
  ]
end
