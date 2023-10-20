cask "heptabase" do
  arch arm: "-arm64"

  version "1.12.1"
  sha256 arm:   "21df4e6de0a0e223c53fbdbe36058a1dac13e784b435019ce8a107fca90803d1",
         intel: "ddd5b3db9dccb1f9013426f22830c4dace2ef7c712015b6e96379083dd6cb91b"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Heptabase-#{version}#{arch}-mac.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
