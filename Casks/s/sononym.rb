cask "sononym" do
  arch arm: "-arm64"

  version "1.6.16"
  sha256 arm:   "a39068c65daf80c4c647d2fda13015ea6538309ea5b279d032f9fd7c17ab6b36",
         intel: "c93d86d214a71a9b0e2b4d8d0790f0869697f4cc1348e5573b83d9ebe39330e1"

  url "https://www.sononym.net/download/Sononym-#{version}#{arch}.dmg"
  name "Sononym"
  desc "AI-powered sample browser for exploring audio samples"
  homepage "https://www.sononym.net/"

  livecheck do
    url :homepage
    regex(/href=.*?Sononym[._-]v?(\d+(?:\.\d+)+)#{arch}\.dmg/i)
  end

  depends_on :macos

  app "Sononym.app"

  zap trash: [
    "~/Library/Application Support/Sononym",
    "~/Library/Preferences/com.sononym.sononym.plist",
    "~/Library/Saved Application State/com.sononym.sononym.savedState",
  ]
end
