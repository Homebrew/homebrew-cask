cask "almighty" do
  version "2.8.3"
  sha256 :no_check

  url "https://almighty-app.s3.amazonaws.com/Almighty.zip",
      verified: "almighty-app.s3.amazonaws.com/"
  name "Almighty"
  desc "Settings and tweaks configurator"
  homepage "https://indiegoodies.com/almighty"

  livecheck do
    url "https://raw.githubusercontent.com/onmyway133/archives/master/AlmightyCast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Almighty.app"

  zap trash: [
    "~/Library/Application Support/Almighty",
    "~/Library/Application Support/com.onmyway133.Almighty",
    "~/Library/Caches/com.onmyway133.Almighty",
    "~/Library/Preferences/com.onmyway133.Almighty.plist",
    "~/Library/Saved Application State/com.onmyway133.Almighty.savedState",
  ]
end
