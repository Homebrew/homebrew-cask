cask "decrediton" do
  arch arm: "arm64", intel: "amd64"

  version "1.7.7"
  sha256 arm:   "20230c5494dbac62cfb4cab4e3a37b833c368eeb360e7dfd73232a10f1b2e9f3",
         intel: "ba820a4a5b511ceff5817bc127cd8b624d8ba44bab721a4de436490441149f88"

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-#{arch}-v#{version}.dmg"
  name "Decrediton"
  desc "GUI wallet for Decred supporting staking, privacy, and decentralized exchange."
  homepage "https://github.com/decred/decrediton"

  app "decrediton.app"

  zap trash: [
    "~/Library/Application Support/decrediton",
    "~/Library/Preferences/com.Electron.Decrediton.plist",
  ]
end
