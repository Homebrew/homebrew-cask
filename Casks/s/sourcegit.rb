cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2026.07"
  sha256 arm:   "b920af563924c88f23773efaaa2c7a56467332141c9d732621f3310dc8f06d12",
         intel: "e9312c4de43ba0f4c3bfc00d2614ddaffcf425cf59185203002383b5fc15b41a"

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
