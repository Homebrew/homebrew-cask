cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.20.2"
  sha256 arm:   "79959b89e2d8eea42e0ea240a194b46b12be6e8ec20b82bce3cf507bcac9a8d5",
         intel: "2c491d4cc8b0150c0cd859a788b4a2042047f399e7ab74ba3c703cd154d41a06"

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
