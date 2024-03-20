cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.12.2"
  sha256 arm:   "bce601e33a660bb24d574bf0b6faa1998a687c882b0bdd30c55163a984210c39",
         intel: "dcd6b0a880ebaf55406839f6fb2779a09292e954932589e73d94d10fcd7e92e7"

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
