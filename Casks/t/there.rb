cask "there" do
  version "2.0.0"
  sha256 "5a9dd8eebbb385f6fa09309b559f4d0341231519f39527bea2315140f7301c7f"

  url "https://github.com/dena-sohrabi/There/releases/download/v#{version}/There.zip",
      verified: "github.com/dena-sohrabi/There/"
  name "There"
  desc "Tool to display the local times of friends, teammates, cities or any time zone"
  homepage "https://there.pm/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "There.app"

  uninstall signal: ["TERM", "pm.there.There"]

  zap trash: [
    "~/Library/Application Support/There",
    "~/Library/Caches/pm.there.There",
    "~/Library/Logs/There",
    "~/Library/Preferences/pm.there.There.plist",
  ]
end
