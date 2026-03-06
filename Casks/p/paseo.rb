cask "paseo" do
  version "0.1.17"
  sha256 "487171ad6942da5977df1e62f692961b72f933e340feec45757451c09a54aca5"

  url "https://github.com/getpaseo/paseo/releases/download/v#{version}/Paseo_#{version}_universal.dmg",
      verified: "github.com/getpaseo/paseo/"
  name "Paseo"
  desc "Orchestrate coding agents from anywhere"
  homepage "https://paseo.sh/"

  depends_on macos: ">= :ventura"

  app "Paseo.app"

  zap trash: [
    "~/Library/Application Support/dev.paseo.desktop",
    "~/Library/Caches/dev.paseo.desktop",
    "~/Library/Logs/dev.paseo.desktop",
    "~/Library/Preferences/dev.paseo.desktop.plist",
    "~/Library/Saved Application State/dev.paseo.desktop.savedState",
  ]
end
