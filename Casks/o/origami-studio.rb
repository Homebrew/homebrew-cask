cask "origami-studio" do
  version "172.1.0.10.260"
  sha256 :no_check

  url "https://facebook.com/designtools/origami/",
      verified: "facebook.com/designtools/origami/"
  name "Origami Studio"
  desc "Design tool for interactive interfaces"
  homepage "https://origami.design/"

  livecheck do
    url "https://m.facebook.com/mobile_builds/appcast.xml?app_id=892075810923571&amp;amp%3Bflavor=production"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sierra"

  app "Origami Studio.app"

  zap trash: [
    "~/Library/Application Support/com.facebook.Origami-Studio",
    "~/Library/Caches/com.facebook.Origami-Studio",
    "~/Library/HTTPStorages/com.facebook.Origami-Studio",
    "~/Library/Logs/com.facebook.Origami-Studio",
    "~/Library/Preferences/com.facebook.Origami-Studio.plist",
    "~/Library/Saved Application State/com.facebook.Origami-Studio.savedState",
  ]
end
