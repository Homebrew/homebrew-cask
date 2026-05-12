cask "folo" do
  arch arm: "arm64", intel: "x64"

  version "1.8.0"
  sha256 arm:   "1a09ab786fb538efeb6b031878cb326b68503eb81d5ac7ec674c4d826dd46e5f",
         intel: "e4f25687385971250aa9a9d56da8b703776a0bb63e82f79d3c1d7be15adb44d4"

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
