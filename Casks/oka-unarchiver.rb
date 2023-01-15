cask "oka-unarchiver" do
  version "2.1.6"
  sha256 :no_check

  url "https://cdn.okaapps.com/resource/download/OkaUnarchiver.dmg"
  name "Oka Unarchiver"
  desc "Free unarchiver"
  homepage "https://okaapps.com/product/1441507725"

  livecheck do
    url :homepage
    regex(/"softwareVersion":\s"v?(\d+(?:\.\d+)+)"/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Oka Unarchiver #{version.major} Website.app", target: "Oka Unarchiver.app"

  zap trash: [
    "~/Library/Application Scripts/*com.chenhaowu.mac.utility.website.zip*",
    "~/Library/Containers/*com.chenhaowu.mac.utility.website.zip*",
    "~/Library/Group Containers/*com.chenhaowu.mac.utility.website.zip*",
  ]
end
