cask "heptabase" do
  arch arm: "-arm64"

  version "1.108.0"
  sha256 arm:   "97f7604049649303aed70e63db0d6cf2d3c852584a66dde9a3be33233bf758d2",
         intel: "02e96df99e48fb7dc3941dca4b7cdf81c59675e9459d5c94230be45b9577da12"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Heptabase-#{version}#{arch}-mac.zip"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Heptabase.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.projectmeta.projectmeta.sfl*",
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
