cask "publii" do
  version "0.37.3"
  sha256 "60462b5c9977ca730e12c412150adde97c94c2aea8a71c0770aa399f92015137"

  url "https://cdn.getpublii.com/Publii-#{version}.dmg"
  name "Publii"
  homepage "https://getpublii.com/"

  livecheck do
    url "https://getpublii.com/download/"
    strategy :page_match
    regex(%r{href=.*?/Publii-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Publii.app"

  zap trash: [
    "~/Documents/Publii",
    "~/Library/Application Support/Publii",
    "~/Library/Logs/Publii",
    "~/Library/Preferences/com.tidycustoms.publii.plist",
  ]
end
