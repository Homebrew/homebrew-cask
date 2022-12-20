cask "emeetlink" do
  version "4.3.2"
  sha256 :no_check

  url "https://emeetapp.s3.us-west-2.amazonaws.com/eMeetLink_MacOS.dmg",
      verified: "emeetapp.s3.us-west-2.amazonaws.com"
  name "eMeetLink"
  desc "Configuration editor for EMEET products"
  homepage "https://emeet.com/pages/software-service-downloads"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href="https://emeetapp\.s3\.us-west-2\.amazonaws\.com/eMeetLink_MacOS\.dmg".+\n.+\n\s+Downloads\s+V(\d+(?:\.\d+)*)$}i)
  end

  auto_updates true

  app "eMeetLink.app"

  zap trash: [
    "~/Library/Caches/com.eMeet.eMeetLink",
    "~/Library/HTTPStorages/com.eMeet.eMeetLink",
    "~/Library/Preferences/com.eMeet.eMeetLink.plist",
  ]
end
