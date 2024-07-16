cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.21.0"
  sha256 arm:   "b75751fc175ff1984ba1a55a35aeb981a5a1e8407bba9568bbeddd4b2147f85f",
         intel: "b8053519752872ceadb2d80788e4053d2f4c406bcc57d05e5e933a05ee564510"

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
