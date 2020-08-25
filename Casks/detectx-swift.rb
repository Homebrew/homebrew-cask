cask "detectx-swift" do
  version "1.097"
  sha256 "083ce8cf401d9cf6d9956ca3c91a089e22d0ba2a15cd27328f70f99d31d82d83"

  # s3.amazonaws.com/sqwarq.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/sqwarq.com/PublicZips/DetectX_Swift.dmg"
  appcast "https://s3.amazonaws.com/sqwarq.com/AppCasts/dtxswift.xml"
  name "DetectX Swift"
  homepage "https://sqwarq.com/detectx/"

  auto_updates true
  conflicts_with cask: "detectx"
  depends_on macos: ">= :el_capitan"

  app "DetectX Swift.app"

  zap trash: [
    "~/Library/Application Support/DetectX Swift",
    "~/Library/Application Support/com.sqwarq.DetectX-Swift",
    "~/Library/Caches/com.sqwarq.DetectX-Swift",
    "~/Library/LaunchAgents/com.sqwarq.DetectX-Swift.observer.plist",
    "~/Library/Preferences/com.sqwarq.DetectX-Swift.plist",
  ]
end
