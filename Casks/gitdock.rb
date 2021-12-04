cask "gitdock" do
  version "0.1.14"
  sha256 "e57a1e0c5ac54a9cd6f94e54f2fb6c2250217b5fdd8f1f675b7772db85f7d507"

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
