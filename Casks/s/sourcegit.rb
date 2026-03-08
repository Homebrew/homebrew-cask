cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2026.05"
  sha256 arm:   "3cf8c943e8c9fddc5f0a615aeb7083c7d386debc0cf524f99275c1f21af944a6",
         intel: "50d68373a2c38f76ff5d5f4a4eb846bee9fe6019683c22349cfc578ef09a6bd1"

  url "https://github.com/ybeapps/homebrew-sourcegit/releases/download/v#{version}-signed/SourceGit-v#{version}-#{arch}-signed.dmg"
  name "SourceGit"
  desc "Git GUI client"
  homepage "https://github.com/sourcegit-scm/sourcegit"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "SourceGit.app"

  zap trash: [
    "~/Library/Application Support/SourceGit",
    "~/Library/Saved Application State/com.sourcegit.app.savedState",
  ]
end
