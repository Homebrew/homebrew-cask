cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "3.0.1"
  sha256 arm:   "e48f1334c4f06f5b9ea5b7fc41cd9468ed089e476a43f57732e3113c3642c3bb",
         intel: "8ce9890f388dc7a118798c8afa2433811d638ef2a48e45d358ecda58cd9f3482"

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
