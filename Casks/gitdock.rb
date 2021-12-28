cask "gitdock" do
  version "0.1.18"
  sha256 "1e8ef7e881ef293f219b1babe618d0ac727b32c6f1785bef015d5d8fa5f8cefc"

  url "https://gitlab.com/mvanremmerden/gitdock/-/releases/v#{version}/downloads/GitDock-#{version}.dmg"
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
