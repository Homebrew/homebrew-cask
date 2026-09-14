cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2026.20"
  sha256 arm:   "60eb55540ed5afbfcd6cab500afd5552b20a29e5f8549f0faedb584ab704607f",
         intel: "81932b91f290668ec3d9fbcd7e1fbfb2b10d6141a44416d625d1ec577ceb0194"

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
