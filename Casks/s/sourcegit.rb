cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2026.19"
  sha256 arm:   "59d2379b518c8b6ea27d4ca1b54ca55f2e4e057606f2dc80269d5256ae95527a",
         intel: "2682a797d8b369b43ff6a668df4fff71e3c4488e10210d9451ca73a2e0f581be"

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
