cask "glint" do
  version "1.0.0"
  sha256 "390afe63d53f6b2e8132ec560f092aaf8778adea13a8774d1c18bb5726588bea"

  url "https://github.com/blaineam/Glint/releases/download/v#{version}/Glint.dmg",
      verified: "github.com/blaineam/Glint/"
  name "Glint"
  desc "Control external display brightness and volume via DDC from your keyboard"
  homepage "https://glint.wemiller.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Glint.app"

  zap trash: "~/Library/Preferences/com.blainemiller.Glint.plist"
end
