cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2026.24"
  sha256 arm:   "a01b597e12b502093463dd0cd60273236a7b225b578cb00ca23c718e47423edd",
         intel: "1b572b5eb3d4ed868060142b33dd9c722dfa7004dd14a51709db47015537771b"

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
