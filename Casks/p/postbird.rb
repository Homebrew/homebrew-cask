cask "postbird" do
  version "0.9.1"
  sha256 "20ae32670b9f9b6363398e785dbdf31f8254dd5d99549bef37a523a8eb544f7d"

  url "https://github.com/Paxa/postbird/releases/download/v#{version}/Postbird-macos-arm64.dmg"
  name "Postbird"
  desc "PostgreSQL GUI client"
  homepage "https://github.com/Paxa/postbird"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Postbird.app"

  zap trash: [
    "~/Library/Application Support/Postbird",
    "~/Library/Preferences/com.electron.postbird.plist",
    "~/Library/Preferences/org.paxa.postbird.plist",
    "~/Library/Saved Application State/com.electron.postbird.savedState",
    "~/Library/WebKit/org.paxa.postbird",
  ]
end
