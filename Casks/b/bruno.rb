cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "2.11.0"
  sha256 arm:   "d423024e406b96edb4a717ec879e47db8a3ae1fd5cc90e9fed60e8560e94acd1",
         intel: "096bc5a0b7edc9fdeb7fee383e4c8ec72e4b1b20a3f80f7e39fdbd971b3c6d7f"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Open source IDE for exploring and testing APIs"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
