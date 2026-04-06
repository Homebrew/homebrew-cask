cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "4.7.0"
  sha256 arm:   "39d0e0b44a706b94a569d6af56facd888f7bcf63ab6ff3b072a38424d156f4f5",
         intel: "150954849d1985a6e45d33d8b8b48a9fc9137ff6bfb2260c0a23b164304169c5"

  url "https://github.com/cpvalente/ontime/releases/download/v#{version}/ontime-macOS-#{arch}.dmg",
      verified: "github.com/cpvalente/ontime/"
  name "Ontime"
  desc "Time keeping for live events"
  homepage "https://getontime.no/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "ontime.app"

  zap trash: [
    "~/Library/Application Support/ontime",
    "~/Library/Preferences/no.lightdev.ontime.plist",
    "~/Library/Saved Application State/no.lightdev.ontime.savedState",
  ]
end
