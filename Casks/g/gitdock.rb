cask "gitdock" do
  version "0.1.32"
  sha256 "b20f1d2022a34a0882121e4a690702564a6f37780aaa70d7ad3719f585763a21"

  url "https://gitlab.com/mvanremmerden/gitdock/-/releases/v#{version}/downloads/GitDock-#{version}.dmg"
  name "GitDock"
  desc "Displays all your GitLab activities in one place"
  homepage "https://gitlab.com/mvanremmerden/gitdock"

  livecheck do
    url "https://gitlab.com/mvanremmerden/gitdock.git"
  end

  depends_on macos: ">= :high_sierra"

  app "GitDock.app"

  zap trash: [
    "~/Library/Application Support/GitDock",
    "~/Library/Preferences/com.electron.gitdock.plist",
    "~/Library/Saved Application State/com.electron.gitdock.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
