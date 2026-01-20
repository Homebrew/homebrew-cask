cask "amical" do
  arch arm: "arm64", intel: "x64"

  version "0.1.13"
  sha256 arm:   "f97bb3891fab66be1e706c85d16a6dc9cd1f04a1e17975fe3c42811ce0df3c9e",
         intel: "f071ce95bdafdd44c42c9f8b640fa63e184fcf0cbae122f9b0bd570547500495"

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
