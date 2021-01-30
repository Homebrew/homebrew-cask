cask "marvin" do
  version "1.58.2"
  sha256 "4174b7f1a593336b2c8045a61d106c8b6078d7ba979ebf10dd37280308d76b25"

  url "https://amazingmarvin.s3.amazonaws.com/Marvin-#{version}.dmg",
      verified: "amazingmarvin.s3.amazonaws.com/"
  name "Amazing Marvin"
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
