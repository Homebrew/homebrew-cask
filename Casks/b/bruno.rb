cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "3.2.2"
  sha256 arm:   "41cd666f32b75b7b12c8873ad4429ca8a1b3fdc95eecf09e306c356984a99f50",
         intel: "1e8735cefc34e319ad8a21df8f361f221fad0faccc3262130adc4a007473e86a"

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
