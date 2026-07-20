cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2026.15"
  sha256 arm:   "b23905d26b021556dbb837e5205d59bbd2ce69b159914622a995e7fa79752ad2",
         intel: "bd5c029b3a1a28cae8a96e5f785901196c6689f9b5a7fb5c387246c2030aa636"

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
