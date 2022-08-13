cask "gittyup" do
  version "1.1.2"
  sha256 "eeaead8c6cc16867c7e16e476a8d401736839bd84801665473ccb6a35e5462f7"

  url "https://github.com/Murmele/Gittyup/releases/download/stable/Gittyup-#{version}.dmg",
      verified: "github.com/Murmele/Gittyup/"
  name "gittyup"
  desc "Graphical Git client"
  homepage "https://murmele.github.io/Gittyup/"

  livecheck do
    url :homepage
    regex(/v(\d+\.\d+\.\d+) - \d{4}-\d{2}-\d{2}/i)
  end

  app "Gittyup.app"

  zap trash: [
    "~/Library/Application Support/Gittyup",
    "~/Library/Preferences/com.Murmele.Gittyup.plist",
    "~/Library/Preferences/com.github.gittyup.Gittyup.plist",
    "~/Library/Saved Application State/com.Murmele.Gittyup.savedState",
  ]
end
