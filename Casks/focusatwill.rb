cask "focusatwill" do
  version "3.4.0"
  sha256 "b5e2cfdd30e1f4ba69f41c06cc5c2e7c803b28541d24954d454b91e7af892524"

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
