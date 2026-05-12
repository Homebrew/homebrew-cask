cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2026.10"
  sha256 arm:   "a444b194870d1650709e55acb511e0e6550b742b5fd09b1deb2f6268eac0aaa6",
         intel: "fa57613cfc078a9d3dd8069b929459972cbb0f714d3eab0d3efc73801052c3b2"

  url "https://github.com/ybeapps/homebrew-sourcegit/releases/download/v#{version}-signed/SourceGit-v#{version}-#{arch}-signed.dmg"
  name "SourceGit"
  desc "Git GUI client"
  homepage "https://github.com/sourcegit-scm/sourcegit"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "SourceGit.app"

  zap trash: [
    "~/Library/Application Support/SourceGit",
    "~/Library/Saved Application State/com.sourcegit.app.savedState",
  ]
end
