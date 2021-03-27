cask "publii" do
  version "0.38.1"
  sha256 "4755788b0d1e6dd543011901a68880d9cc6bafe8c6e3d452d15c51bee24f899f"

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
