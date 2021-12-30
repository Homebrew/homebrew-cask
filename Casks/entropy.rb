cask "entropy" do
  version "1.6.0"
  sha256 "62ae4d0607a0637d404fef709494951610a13a8d02d8f2d887e6501f98c55591"

  url "https://eigenlogik.s3.amazonaws.com/releases/entropy/Entropy-#{version}.zip",
      verified: "eigenlogik.s3.amazonaws.com/"
  name "Entropy"
  desc "File archiver"
  homepage "http://www.eigenlogik.com/entropy/"

  livecheck do
    url "http://www.eigenlogik.com/entropy/download"
    strategy :header_match
  end

  app "Entropy.app"

  zap trash: [
    "~/Library/Application Support/Entropy",
    "~/Library/Preferences/com.eigenlogik.Entropy.plist",
    "~/Library/Saved Application State/com.eigenlogik.Entropy.savedState",
  ]
end
