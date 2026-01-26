cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2026.02"
  sha256 arm:   "ea92b67a5721ae9b22bdb732b1f0c01967ce3f190f4987910c0ce844b025b453",
         intel: "0490edc2016d215f3df1b7fe582e9a8ced80c94c9e3ba04bc1cfbbaecaf9b5e6"

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
