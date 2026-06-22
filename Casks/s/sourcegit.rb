cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2026.13"
  sha256 arm:   "dfaccd53083ba28f10d95759452badd57827c4d8fc26b1095d426ce1e4ad5cec",
         intel: "d18a2b77f119079d6e8c2de631475e8473a399307437ebb7a125a63ce6a36bb8"

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
