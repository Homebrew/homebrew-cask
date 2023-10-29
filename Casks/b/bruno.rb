cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.27.2"
  sha256 arm:   "21c0397607d7f8fcfa651f1cd30fe2dfa04b5d1ee3c21c952386388ed09266d2",
         intel: "a5df4c18aba020102ecd8486aa3ff6d159defc4ce6fa8f091c7b2bc0b33d45ce"

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
