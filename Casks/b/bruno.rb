cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "3.1.4"
  sha256 arm:   "99599391b6e1d24ef0e1915a5b6abcfe3f81ffe7119d522412e799a2c7655cd8",
         intel: "5afdc04491a0a3e33575595fc6fff02f92fe6733f35871d8b0e431f1f455becb"

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
