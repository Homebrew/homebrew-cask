cask "requestly" do
  arch arm: "-arm64"

  version "25.11.13"
  sha256 arm:   "5f5353e678794dfb7a6a12d5c6372b5cb5ec4d88301377715bd256a3acd0e66a",
         intel: "8ff0acb4cf6af9b3763a85c9fa123e826c7201f05c2bc3cb42eb5b46c22aa06d"

  url "https://github.com/requestly/requestly-desktop-app/releases/download/v#{version}/Requestly-#{version}#{arch}.dmg",
      verified: "github.com/requestly/requestly-desktop-app/"
  name "Requestly"
  desc "Intercept and modify HTTP requests"
  homepage "https://requestly.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Requestly.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.requestly*.sfl*",
    "~/Library/Application Support/Requestly",
    "~/Library/Logs/Requestly",
    "~/Library/Preferences/io.requestly.*.plist",
    "~/Library/Saved Application State/io.requestly.*.savedState",
  ]
end
