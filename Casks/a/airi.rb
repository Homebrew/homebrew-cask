cask "airi" do
  arch arm: "arm64", intel: "x64"

  version "0.11.0"
  sha256 arm:   "fe66244561ccb31ef622b84d7c6b85566b30dc073590b058174d8e20b1c20fd2",
         intel: "dee173ff944dd2266a1747d23fc046e3cc860fbea36426642738aac139df5035"

  url "https://github.com/moeru-ai/airi/releases/download/v#{version}/AIRI-#{version}-darwin-#{arch}.dmg",
      verified: "github.com/moeru-ai/airi/"
  name "AIRI"
  desc "AI companion and VTuber application"
  homepage "https://airi.moeru.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "AIRI.app"

  zap trash: [
    "~/Library/Application Support/ai.moeru.airi",
    "~/Library/Preferences/ai.moeru.airi.plist",
  ]
end
