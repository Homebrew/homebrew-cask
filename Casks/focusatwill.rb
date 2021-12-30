cask "focusatwill" do
  version "3.1.0"
  sha256 "86ff016571ffd43711c2eaf9f68db5eba51c5cc7b9446ab6cdebad194c02fbc7"

  url "https://faw-desktop.s3.amazonaws.com/focusatwill-#{version}.dmg",
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
