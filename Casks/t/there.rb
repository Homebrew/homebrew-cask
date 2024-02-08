cask "there" do
  version "1.8.10"
  sha256 "8c5b6e2e8a35d0f1088c15cf8d4f9b5a407feeeeccbc764a08098c354a181939"

  url "https://github.com/therehq/there-desktop/releases/download/v#{version}/There-#{version}-mac.zip",
      verified: "github.com/therehq/there-desktop/"
  name "There"
  desc "Tool to display the local times of people in a team"
  homepage "https://there.pm/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "There.app"

  uninstall signal: ["TERM", "pm.there.desktop"]
end
