cask "publii" do
  version "0.38.3"
  sha256 "d395fcfb83f7a99c40d3c14f8e42d7cd576170ac245f1a68d1a34a7a4e8c3455"

  url "https://cdn.getpublii.com/Publii-#{version}.dmg"
  name "Publii"
  desc "Static website generator"
  homepage "https://getpublii.com/"

  livecheck do
    url "https://getpublii.com/download/"
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
