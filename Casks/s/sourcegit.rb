cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2026.17"
  sha256 arm:   "99c2b15265e50ea50b7629e7a9466bc21d82d2920587b4c2eeed5303daff83f3",
         intel: "b67b047c9bd56398f43a58fe1539adb8c7a546c20641a5493398f1872584f15f"

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
