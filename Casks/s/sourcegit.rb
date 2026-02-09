cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2026.03"
  sha256 arm:   "19712ae1c3488522b25d79d1e3fb088384fb9b075eced29ab493deed1282811e",
         intel: "285adf21a2dbc5beb1cec459617cf71b122bcb0ee46c7a5015b438183a16fdb8"

  url "https://github.com/ybeapps/homebrew-sourcegit/releases/download/v#{version}-signed/SourceGit-v#{version}-#{arch}-signed.dmg"
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
