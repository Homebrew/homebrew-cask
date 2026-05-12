cask "folo" do
  arch arm: "arm64", intel: "x64"

  version "1.7.0"
  sha256 arm:   "739f103a22b5b4e0032f507112650b455c7edd04d17fa543cfa04e18b8a56e40",
         intel: "c5c0568e7ce8dd7085f3a8184f362672a60ff69e23976281f1fc08a7ac4e378d"

  url "https://github.com/RSSNext/Folo/releases/download/desktop%2Fv#{version}/Folo-#{version}-macos-#{arch}.dmg",
      verified: "github.com/RSSNext/Folo/"
  name "Folo"
  desc "Information browser"
  homepage "https://folo.is/"

  livecheck do
    url :url
    regex(%r{^(?:desktop[/@])?v?(\d+(?:\.\d+)+(?:[._-]beta[._-]?\d+)?)$}i)
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Folo.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/is.follow.sfl*",
    "~/Library/Application Support/Folo",
    "~/Library/Logs/Folo",
    "~/Library/Preferences/is.follow.plist",
    "~/Library/Saved Application State/is.follow.savedState",
  ]
end
