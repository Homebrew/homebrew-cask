cask "munkiadmin" do
  version "1.10.1"
  sha256 "29a4c5ba0ba9cddde9045a78098d7426d1972ff516707af77cd43c3b82b2222f"

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
