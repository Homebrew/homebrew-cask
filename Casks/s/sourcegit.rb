cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2026.08"
  sha256 arm:   "5dfc97375c42bd82f4b22b580f278b79323ff6caf456e414792c94735c81766d",
         intel: "1c16e6c9b0fdd7588dfee175b02dc8b8a0cea5508a79d85b61e03b7fd167e40f"

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
