cask "lectrote" do
  arch arm: "arm64", intel: "x64"

  version "1.5.4"
  sha256 arm:   "11850f5b8043aee0bc326d78946721c21f8bce38d1eec74aadcab86cba6dacb1",
         intel: "9f11e3c56e56af7c47ea1b31558ad892e8dcd699ab65a1e07a8b7890983f6a91"

  url "https://github.com/erkyrath/lectrote/releases/download/lectrote-#{version}/Lectrote-#{version}-macos-#{arch}.dmg"
  name "Lectrote"
  desc "Interactive Fiction interpreter in an Electron shell"
  homepage "https://github.com/erkyrath/lectrote"

  depends_on macos: ">= :catalina"

  app "Lectrote.app"

  zap trash: [
    "~/Library/Application Support/Lectrote",
    "~/Library/Preferences/com.eblong.lectrote.plist",
  ]
end
