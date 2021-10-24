cask "gitdock" do
  version "0.1.11"
  sha256 "d81ba225f7c07df4b8e75640158cb6154aad47e297b4b0366bb732ce5ffbbc43"

  url "https://gitlab.com/mvanremmerden/gitdock/-/releases/v#{version}/downloads/GitDock.dmg"
  name "GitDock"
  desc "Displays all your GitLab activities in one place"
  homepage "https://gitlab.com/mvanremmerden/gitdock"

  livecheck do
    url "https://gitlab.com/mvanremmerden/gitdock.git"
  end

  app "GitDock.app"

  zap trash: [
    "~/Library/Application Support/GitDock",
    "~/Library/Preferences/com.electron.gitdock.plist",
    "~/Library/Saved Application State/com.electron.gitdock.savedState",
  ]
end
