cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2026.12"
  sha256 arm:   "00e331232218d6eb754b0ae97b2275c2730c45f518ae290fc78fb67010caf19e",
         intel: "43105bb4c17d0a134f5a30cf12da2bce5059a117f851e9a91f6eed77e527f9ee"

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
