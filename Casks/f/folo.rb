cask "folo" do
  arch arm: "arm64", intel: "x64"

  version "1.12.0"
  sha256 arm:   "6fa851d93ae151e07fa28a83ffdcf60d9da95bfb2bbe96766fb2211a731a8c27",
         intel: "59504f3de6175cd264580b9cc8285dafffe61063df06c6efe3754285ba906dc0"

  url "https://github.com/RSSNext/Folo/releases/download/desktop%2Fv#{version}/Folo-#{version}-macos-#{arch}.dmg"
  name "Folo"
  desc "Information browser"
  homepage "https://folo.is/"

  livecheck do
    url :url
    regex(%r{^(?:desktop[/@])?v?(\d+(?:\.\d+)+)$}i)
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
