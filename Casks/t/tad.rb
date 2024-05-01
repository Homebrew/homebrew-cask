cask "tad" do
  arch arm: "aarch64", intel: "x86-64"
  suffix = on_arch_conditional arm: "-arm64", intel: ""

  version "0.13.0"
  sha256  intel: "4c71f6f6a0fadf65891663d1a0462dd8d3576a4c62bdd8721012cbdd61ee1fee",
          arm:   "9c129a65fdf94b4b32b6e26d8836a56d4284bff9a6e1df657cc23d19e5c802b1"

  url "https://github.com/antonycourtney/tad/releases/download/v#{version}/Tad-#{version}#{suffix}.dmg",
      verified: "github.com/antonycourtney/tad/"
  name "Tad"
  desc "Desktop application for viewing and analyzing tabular data"
  homepage "https://www.tadviewer.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Tad.app"
  binary "#{appdir}/Tad.app/Contents/Resources/tad.sh", target: "tad"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.antonycourtney.tad.sfl*",
    "~/Library/Application Support/Tad",
    "~/Library/Logs/Tad",
    "~/Library/Preferences/com.antonycourtney.tad.plist",
    "~/Library/Saved Application State/com.antonycourtney.tad.savedState",
  ]
end
