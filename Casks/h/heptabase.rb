cask "heptabase" do
  arch arm: "-arm64"

  version "1.108.2"
  sha256 arm:   "e0415b7b0dceb0ff229218f687536dc95d9cd285befc0585fafc141cc7f80ca8",
         intel: "a857d5b28d80b1dd40928f01263fcc399e2f563fd46caf7b8370708582dbaae0"

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
