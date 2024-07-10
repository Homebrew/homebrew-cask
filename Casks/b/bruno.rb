cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.20.3"
  sha256 arm:   "3373f308f779021612d5613447189619e67686f28f19cc0f009de4214c0a9655",
         intel: "406add192130e53f33124a1ba9aba914733e5f7c61b219985231cd885760590b"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
