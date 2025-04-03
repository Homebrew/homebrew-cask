cask "heptabase" do
  arch arm: "-arm64"

  version "1.54.1"
  sha256 arm:   "a56166710e13b59e0b03b6f91f37b834ff6231944f350b63b68af15f80a4d1e5",
         intel: "f8906bcc9740d5bf35788efad51aa9db84a3b68aacca01894e0cc0895184b2be"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Heptabase-#{version}#{arch}-mac.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
