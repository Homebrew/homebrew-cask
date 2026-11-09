cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2026.23"
  sha256 arm:   "63043912400cebf96d5a0f8f18100cf55cd949c9b99ea786d5ab83cb65616659",
         intel: "8ad1a16744a0c1f7ae62c2f3cc8240db3e12650af92b6e330b1681310cdb80c6"

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
