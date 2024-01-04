cask "cursr" do
  arch arm: "arm64", intel: "x64"

  version "1.6.5"
  sha256 arm:   "def8dd59c7ebbbf507a1de30a37ddec4b0db45a89756e17422264cb2d28ac315",
         intel: "04d277276d974f61bbb4a74e42c36db9f56e4346062468d862b84c83db5efd31"

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
