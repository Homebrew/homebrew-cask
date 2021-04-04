cask "publii" do
  version "0.38.1"
  sha256 "3fec5a8210ed0baae3cfffcc1ae0fbcbf978a1abd2f6b1c37d9785bedfd18c24"

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
