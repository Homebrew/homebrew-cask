cask "gisto" do
  arch arm: "aarch64", intel: "x64"

  version "2.5.1"
  sha256 arm:   "770dc49338b323ec157dac826761c5a84e5905aa151b9945d4f36aed7dc8d86e",
         intel: "acb1dd7392135eb4e16ac884ce431062dbfd4b95a97bcb7dd2d3c8ae16bf2717"

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
