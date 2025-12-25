cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.40"
  sha256 arm:   "49a868c212162a3f7e59dabece3bce21d763787ab419e3bd725348c29ece1d45",
         intel: "e1e5379b64189f4a24e07f75f247ab47a433fa4ddfd9e6ff9f530ebd6d2603a3"

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
