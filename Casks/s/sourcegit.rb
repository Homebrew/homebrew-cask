cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.41"
  sha256 arm:   "b2c59181eac958d87dbe6923e0eff64a0ac94355198f496453a80ba7d36ee417",
         intel: "db90a2e2f69950cd192fff18086d2ef8758c84e36c37b4c98a7ad4c2b030cb79"

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
