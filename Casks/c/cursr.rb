cask "cursr" do
  arch arm: "arm64", intel: "x64"

  version "1.6.2"
  sha256 arm:   "b60c47614c47d6efc3f80a3e1556930d905d2e2ccf704fff899cef465d16ed40",
         intel: "591b7d4c404c0c815e2afed9dfbaefbb922aecae9c464b46f6967c14d5f048b8"

  url "https://github.com/bitgapp/Cursr/releases/download/v#{version}/Cursr-mac-#{arch}.dmg",
      verified: "github.com/bitgapp/Cursr/"
  name "Cursr"
  desc "Customize mouse movements between multiple displays"
  homepage "https://cursr.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Cursr.app"

  zap trash: [
    "~/Library/Application Support/cursr",
    "~/Library/Preferences/com.bitgapp.cursr.plist",
  ]
end
