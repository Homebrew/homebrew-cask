cask "munkiadmin" do
  version "1.7.1"
  sha256 "0eb86e33162db7ee5c76c1f16b826481c2ec2002153479e738043f59c51c59b1"

  url "https://github.com/hjuutilainen/munkiadmin/releases/download/v#{version}/MunkiAdmin-#{version}.dmg",
      verified: "github.com/hjuutilainen/munkiadmin/"
  appcast "https://github.com/hjuutilainen/munkiadmin/releases.atom"
  name "MunkiAdmin"
  desc "Tool to manage Munki repositories"
  homepage "https://hjuutilainen.github.io/munkiadmin/"

  app "MunkiAdmin.app"

  zap trash: [
    "~/Library/Application Support/MunkiAdmin",
    "~/Library/Caches/com.hjuutilainen.MunkiAdmin",
    "~/Library/Logs/MunkiAdmin",
    "~/Library/Preferences/com.hjuutilainen.MunkiAdmin.plist",
  ]
end
