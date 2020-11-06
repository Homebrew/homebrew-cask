cask "near-lock" do
  version "5.1.0"
  sha256 "e34078ec99d41e2aa01dc7b0a69274ed77baa4716d8570200cb7e1240c2756d6"

  url "https://nearlock.me/downloads/nearlock.dmg"
  appcast "https://nearlock.me/downloads/nearlock.xml"
  name "Near Lock"
  desc "Automatically lock and unlock the system with your iPhone"
  homepage "https://nearlock.me/"

  app "Near Lock.app"

  zap trash: [
    "~/Library/Application Support/NearLock",
    "~/Library/Application Support/me.nearlock.Near-Lock",
    "~/Library/Caches/me.nearlock.Near-Lock",
    "~/Library/NearLock",
    "~/Library/Preferences/me.nearlock.Near-Lock.plist",
  ]
end
