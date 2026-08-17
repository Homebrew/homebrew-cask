cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2026.18"
  sha256 arm:   "8e7e7ab6982d4df596b86dac8784f03d3782a2e730a308326ba7b98c0c21ac60",
         intel: "46bd52b5534dc245e5aa243fd619b31dffbba0f72f6927c50451a4f93ce4f4ac"

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
