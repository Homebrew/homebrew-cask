cask "munkiadmin" do
  version "1.8.0b1"
  sha256 "798d3028463b8daa69ba6379e6f3ef420e27705aeee1dfac6f9216319d7a0902"

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
