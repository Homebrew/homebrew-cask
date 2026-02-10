cask "macpulse" do
  version "1.0.1"
  sha256 "04b5b2a310197c18f738a0d905c4795646b8c4b137c1a3a9fac85885a7c371f0"

  url "https://macpulse.app/downloads/MacPulse-#{version}.dmg"
  name "MacPulse"
  desc "System monitoring dashboard with historical analytics"
  homepage "https://macpulse.app/"

  livecheck do
    url "https://macpulse.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "MacPulse.app"

  zap trash: [
    "~/Library/Application Support/MacPulse",
    "~/Library/Caches/com.jupe.MacPulse",
    "~/Library/HTTPStorages/com.jupe.MacPulse",
    "~/Library/Preferences/com.jupe.MacPulse.plist",
  ]
end
