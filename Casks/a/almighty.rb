cask "almighty" do
  version "2.6.4"
  sha256 :no_check

  url "https://almighty-app.s3.eu-north-1.amazonaws.com/Almighty.zip",
      verified: "almighty-app.s3.eu-north-1.amazonaws.com/"
  name "Almighty"
  desc "Settings and tweaks configurator"
  homepage "https://onmyway133.com/almighty/"

  livecheck do
    url "https://raw.githubusercontent.com/onmyway133/archives/master/AlmightyCast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Almighty.app"

  zap trash: [
    "~/Library/Application Support/Almighty",
    "~/Library/Application Support/com.onmyway133.Almighty",
    "~/Library/Caches/com.onmyway133.Almighty",
    "~/Library/Preferences/com.onmyway133.Almighty.plist",
    "~/Library/Saved Application State/com.onmyway133.Almighty.savedState",
  ]
end
