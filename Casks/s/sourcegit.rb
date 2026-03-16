cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2026.06"
  sha256 arm:   "3207189b443c58052183263ec61e7416870a2855b0dbc3f39b5fa30f646e8a42",
         intel: "48bb6b7516daced0efd7881720e3c0142314daa9ee25c35cedb462af05073b54"

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
