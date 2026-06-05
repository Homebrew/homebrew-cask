cask "airi" do
  arch arm: "arm64", intel: "x64"

  version "0.10.2"
  sha256 arm:   "494c2c441e5993fa9d87673f6de6c493d7bcd9a952af7cdd621cd499349ad341",
         intel: "b0e5b3bf3a3623ab0b2df335fe43e258cf97e287741898952e6a28c4f2a23713"

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
