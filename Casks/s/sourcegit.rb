cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2026.01"
  sha256 arm:   "8f2802009177f2278d9339cf2cc6993e93fd7d6e28a2324948aad265563207b6",
         intel: "bd53fd4c8b238e557a7ebb45a0c711cbbb23b76060d3d9c769ba5279f734418b"

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
