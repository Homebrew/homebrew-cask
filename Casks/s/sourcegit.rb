cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2026.22"
  sha256 arm:   "de0b5b1946a16bb7afb67d5579cec53af8f57f5847de4e15c0b66355872ee4a1",
         intel: "c9abf2681d44549348e0a8a6855497cc724c410380e2ad1c09beeea1c3582a9e"

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
