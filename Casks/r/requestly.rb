cask "requestly" do
  arch arm: "-arm64"

  version "25.10.8"
  sha256 arm:   "00938f9c46cc94ac92109c2143b87223fb966670de962eaace560267a91ea393",
         intel: "e4a774110ced6994ac7d7e9586860f6194f385faaed001c5e3194e3c72ad62e7"

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
