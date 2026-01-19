cask "amical" do
  arch arm: "arm64", intel: "x64"

  version "0.1.13"
  sha256 arm:   "3b8d613c723709b1f0923053ef1f0c5f0f37119f18b3296155998a1a5b17ae95",
         intel: "90b79998638148b8c2ee0b59b3c4c9255a4e76a6ceb3491950d85f81216b23d9"

  url "https://github.com/amicalhq/amical/releases/download/v#{version}/Amical-#{version}-#{arch}.dmg"
  name "Amical"
  desc "AI dictation app - open source and local-first"
  homepage "https://github.com/amicalhq/amical"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Amical.app"

  zap trash: [
    "~/Library/Application Support/Amical",
    "~/Library/Caches/Amical",
    "~/Library/Preferences/com.amical.app.plist",
    "~/Library/Saved Application State/com.amical.app.savedState",
  ]
end