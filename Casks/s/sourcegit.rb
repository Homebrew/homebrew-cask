cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2026.21"
  sha256 arm:   "2d482ceab2e9e3814726c14df64c5a8960274a0a68fdec8a34f6b4877c4a82f7",
         intel: "6194c2bfa5ffa029110cc9041a28f2fc025f7e36a6928905180cea21469cf25b"

  url "https://github.com/ybeapps/homebrew-sourcegit/releases/download/v#{version}-signed/SourceGit-v#{version}-#{arch}-signed.dmg"
  name "SourceGit"
  desc "Git GUI client"
  homepage "https://github.com/sourcegit-scm/sourcegit"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on :macos

  app "SourceGit.app"
  binary "#{appdir}/SourceGit.app/Contents/MacOS/SourceGit", target: "sourcegit"

  zap trash: [
    "~/Library/Application Support/SourceGit",
    "~/Library/Saved Application State/com.sourcegit.app.savedState",
  ]
end
