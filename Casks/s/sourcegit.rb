cask "sourcegit" do
  version "2025.40"

  on_arm do
    sha256 "49a868c212162a3f7e59dabece3bce21d763787ab419e3bd725348c29ece1d45"
    url "https://github.com/ybeapps/homebrew-sourcegit/releases/download/v#{version}-signed/SourceGit-v#{version}-arm64-signed.dmg",
        verified: "github.com/ybeapps/homebrew-sourcegit/"
  end

  on_intel do
    sha256 "e1e5379b64189f4a24e07f75f247ab47a433fa4ddfd9e6ff9f530ebd6d2603a3"
    url "https://github.com/ybeapps/homebrew-sourcegit/releases/download/v#{version}-signed/SourceGit-v#{version}-x64-signed.dmg",
        verified: "github.com/ybeapps/homebrew-sourcegit/"
  end

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
