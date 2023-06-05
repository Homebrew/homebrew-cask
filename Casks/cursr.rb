cask "cursr" do
  arch arm: "arm64", intel: "x64"

  version "1.4.13"
  sha256 arm:   "f9ff32c6048829b7e4103eeb82d62825ba5da8b890efe654f51206e91665c343",
         intel: "fd893a4c0be96168d2f5a10edb93f9447a31d4f31a3a77747df6c4934e976038"

  url "https://github.com/bitgapp/Cursr/releases/download/v#{version}/Cursr-mac-#{arch}.dmg",
      verified: "github.com/bitgapp/Cursr/"
  name "Cursr"
  desc "Customize mouse movements between multiple displays"
  homepage "https://cursr.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Cursr.app"

  zap trash: [
    "~/Library/Application Support/cursr",
    "~/Library/Preferences/com.bitgapp.cursr.plist",
  ]
end
