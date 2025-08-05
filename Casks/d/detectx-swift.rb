cask "detectx-swift" do
  version "1.0982"
  sha256 :no_check

  url "https://s3.amazonaws.com/sqwarq.com/PublicZips/DetectX_Swift.dmg",
      verified: "s3.amazonaws.com/sqwarq.com/"
  name "DetectX Swift"
  desc "Searching and troubleshooting tool"
  homepage "https://sqwarq.com/detectx/"

  livecheck do
    url "https://s3.amazonaws.com/sqwarq.com/AppCasts/dtxswift.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "DetectX Swift.app"

  zap trash: [
    "~/Library/Application Support/com.sqwarq.DetectX-Swift",
    "~/Library/Application Support/DetectX Swift",
    "~/Library/Caches/com.sqwarq.DetectX-Swift",
    "~/Library/LaunchAgents/com.sqwarq.DetectX-Swift.observer.plist",
    "~/Library/Preferences/com.sqwarq.DetectX-Swift.plist",
  ]
end
