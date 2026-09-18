cask "folo" do
  arch arm: "arm64", intel: "x64"

  version "1.14.0"
  sha256 arm:   "2829948fed174a03f7e51e0b75b8882882f86eb0da5e8618ff7eb7a06d141d20",
         intel: "074f8fe407bdaa360d050ef4c1ccd9a2f0703e4a53213239bb04f741ee585636"

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
