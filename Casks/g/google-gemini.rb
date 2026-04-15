cask "google-gemini" do
  version "1.45.6.217"
  sha256 :no_check

  url "https://dl.google.com/release2/j33ro/release/Gemini.dmg",
      verified: "dl.google.com/"
  name "Google Gemini"
  desc "Desktop application for Google AI assistant"
  homepage "https://gemini.google/mac/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "Gemini.app"

  zap trash: [
    "~/Library/Application Support/Google/Gemini",
    "~/Library/Caches/com.google.Gemini",
    "~/Library/HTTPStorages/com.google.Gemini",
    "~/Library/Preferences/com.google.Gemini.plist",
    "~/Library/Saved Application State/com.google.Gemini.savedState",
    "~/Library/WebKit/com.google.Gemini",
  ]
end
