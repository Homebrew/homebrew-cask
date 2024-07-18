cask "ivacy" do
  version "7.0.0,8"
  sha256 :no_check

  url "https://apps-ivacy.s3.amazonaws.com/mac/Ivacy.dmg",
      verified: "apps-ivacy.s3.amazonaws.com/"
  name "Ivacy"
  desc "VPN client"
  homepage "https://www.ivacy.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :catalina"

  app "Ivacy.app"

  zap trash: [
    "~/Library/Application Scripts/com.ivacy.mac",
    "~/Library/Containers/com.ivacy.mac",
  ]
end
