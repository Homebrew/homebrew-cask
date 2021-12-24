cask "gitdock" do
  version "0.1.16"
  sha256 "45579659481c7c5142d3eb65e3b005d8233d834811662c5e54803dffd3db1ac4"

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
