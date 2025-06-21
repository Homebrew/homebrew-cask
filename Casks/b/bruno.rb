cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "2.6.1"
  sha256 arm:   "45e3debc8f6c253d0ce6320ffcb2322bd79674cddccc5380e9f6c4ba0223b7f7",
         intel: "80606929aa4c7b5c93db87008a487b02253e94a570a9a5c3003688a6d7de7154"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Open source IDE for exploring and testing APIs"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
