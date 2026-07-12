cask "gisto" do
  arch arm: "aarch64", intel: "x64"

  version "2.13.1"
  sha256 arm:   "07e482cca90e95cbb80e65d6b2a48ac836fe553cd51ee386c61031118255bea0",
         intel: "5477c8ce30a5614b96fb8250a0522e3f98245be11a5c1dfa33a5fbd92ac95027"

  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto_#{version}_#{arch}.dmg",
      verified: "github.com/Gisto/Gisto/"
  name "Gisto"
  desc "Snippets management desktop application"
  homepage "https://www.gisto.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "Gisto.app"

  zap trash: [
    "~/Library/Application Support/Gisto",
    "~/Library/Caches/com.gistoapp.gisto2",
    "~/Library/Logs/Gisto",
    "~/Library/Preferences/com.gistoapp.gisto2.helper.plist",
    "~/Library/Preferences/com.gistoapp.gisto2.plist",
    "~/Library/Saved Application State/com.gistoapp.gisto2.savedState",
  ]
end
