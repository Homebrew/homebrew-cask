cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2026.09"
  sha256 arm:   "311ea8875344c7325d6e8e4104463f35ba2f2b2642599174b8b31d1ea65e4dc4",
         intel: "9ec92d642026e2bf0db9e0165f0e850f30c8f4eba85cd1f549a75040767331d2"

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
