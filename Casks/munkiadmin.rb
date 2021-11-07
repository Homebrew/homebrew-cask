cask "munkiadmin" do
  version "1.8.1"
  sha256 "2037b131b298579bc0213578602e219ee43d6054d4ab5d61432b08c38bc15349"

  url "https://github.com/hjuutilainen/munkiadmin/releases/download/v#{version}/MunkiAdmin-#{version}.dmg",
      verified: "github.com/hjuutilainen/munkiadmin/"
  name "MunkiAdmin"
  desc "Tool to manage Munki repositories"
  homepage "https://hjuutilainen.github.io/munkiadmin/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)*)$/i)
  end

  app "MunkiAdmin.app"

  zap trash: [
    "~/Library/Application Support/MunkiAdmin",
    "~/Library/Caches/com.hjuutilainen.MunkiAdmin",
    "~/Library/Logs/MunkiAdmin",
    "~/Library/Preferences/com.hjuutilainen.MunkiAdmin.plist",
  ]
end
