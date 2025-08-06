cask "stay" do
  version "1.5"
  sha256 "24092fb468af2c89c1ae3a80ba4a09808f0bf98c648ddfbcbc93a0612f114562"

  url "https://cordlessdog.com/stay/versions/Stay%20#{version}.dmg"
  name "Stay"
  desc "Windows manager"
  homepage "https://cordlessdog.com/stay/"

  livecheck do
    url "https://cordlessdog.com/stay/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :catalina"

  app "Stay.app"

  zap trash: [
    "~/Library/Application Support/com.cordlessdog.Stay",
    "~/Library/Application Support/Stay",
    "~/Library/Preferences/com.cordlessdog.Stay.plist",
  ]
end
