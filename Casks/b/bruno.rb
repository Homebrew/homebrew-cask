cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.16.5"
  sha256 arm:   "bb028452b37b8f6ea1e55e4f2cf40f959e54f14f8ade5b2ecb3b679f8222d586",
         intel: "82ff4f817814c9e5f200c46adda4397ec19a3d0912378dfa2ed175b960969d23"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  depends_on macos: ">= :high_sierra"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
