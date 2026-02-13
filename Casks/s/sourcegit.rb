cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2026.04"
  sha256 arm:   "e5af1d406dc5746e93cdd9eacb1b6bbe40802664762713759937d4b921320881",
         intel: "3891c68fac34eb9b86d6d4fff47ffd91c52c2770024b01f8d64d289547525817"

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
