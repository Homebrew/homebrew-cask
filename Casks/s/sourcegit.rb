cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2026.11"
  sha256 arm:   "401d928ceef760ca10d6268f2196ec83575a258a47e5fe3317fd038b3c10291b",
         intel: "fb1058d7b9800af73a2376eab2d66b45b71f4c7099546ebbe63b96cd4508a9b9"

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
  binary "#{appdir}/SourceGit.app/Contents/MacOS/SourceGit", target: "sourcegit"

  zap trash: [
    "~/Library/Application Support/SourceGit",
    "~/Library/Saved Application State/com.sourcegit.app.savedState",
  ]
end
