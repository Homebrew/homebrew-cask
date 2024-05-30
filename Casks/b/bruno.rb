cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.18.1"
  sha256 arm:   "5d5f1419ee9cce10790d4bda5ec5002568a0ad5495a058b8c7fa18ee66effc71",
         intel: "069be2ad46bfdf0f8c9ea05f51bf56131034cf122a81a26ac76bb7bb7e7ad9ce"

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
