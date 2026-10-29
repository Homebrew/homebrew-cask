cask "stapl" do
  version "1.6.0"
  sha256 "c78fe016b3e644b40758888850138b509df4c2a02d6d58116b1c090bcbad9bc6"

  url "https://api.twoplus11.com/api/v1/upgrade/stapl/Stapl-#{version}.zip"
  name "Stapl"
  desc "Utility and productivity tool"
  homepage "https://twoplus11.com/stapl/"

  livecheck do
    url "https://twoplus11.com/stapl/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "Stapl.app"

  zap trash: [
    "~/Library/Application Support/com.twoplus11.Stapl",
    "~/Library/Caches/com.twoplus11.Stapl",
    "~/Library/HTTPStorages/com.twoplus11.Stapl",
    "~/Library/Preferences/com.twoplus11.Stapl.plist",
    "~/Library/Saved Application State/com.twoplus11.Stapl.savedState",
  ]
end
