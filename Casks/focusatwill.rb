cask "focusatwill" do
  version "3.2.0"
  sha256 "011476e399e725654d1cc6b76ac8fbb61d39f9fa5aa5fc6ac562f7f3ee73df03"

  url "https://faw-desktop.s3.amazonaws.com/focusatwill-#{version}-universal.dmg",
      verified: "faw-desktop.s3.amazonaws.com/"
  name "Focus@Will"
  desc "Personalized focus music"
  homepage "https://www.focusatwill.com/"

  livecheck do
    url "https://faw-desktop.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "focusatwill.app"

  zap trash: [
    "~/Library/Application Support/focusatwill",
    "~/Library/Logs/focusatwill",
    "~/Library/Preferences/com.focusatwill.desktop.plist",
    "~/Library/Saved Application State/com.focusatwill.desktop.savedState",
  ]
end
