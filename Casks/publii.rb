cask "publii" do
  version "0.38.2"
  sha256 "2c66402946c96ac14c805c4738775208fbde257185427355f17061298082a07c"

  url "https://cdn.getpublii.com/Publii-#{version}.dmg"
  name "Publii"
  desc "Static website generator"
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
