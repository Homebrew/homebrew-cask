cask "detectx-swift" do
  version "1.0971"
  sha256 "6449316b55de59cacc738df72e13c93a3c6fad4520db49cb16753037e45ecd0d"

  # s3.amazonaws.com/sqwarq.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/sqwarq.com/PublicZips/DetectX_Swift.dmg"
  appcast "https://s3.amazonaws.com/sqwarq.com/AppCasts/dtxswift.xml"
  name "DetectX Swift"
  desc "Searching and troubleshooting tool"
  homepage "https://sqwarq.com/detectx/"

  auto_updates true
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
