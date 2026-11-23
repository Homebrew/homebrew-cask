cask "sejda-pdf" do
  arch arm: "_arm64"

  version "7.10.1"
  sha256 arm:   "1840d9ab11ed63883ab8082c86beccd648276223d3019926bb8b7319068fda63",
         intel: "36fdc934cfec911f64ac09c658c3df469774464f3636e8329aec746504969a86"

  url "https://downloads.sejda-cdn.com/sejda-desktop_#{version}#{arch}.dmg"
  name "Sejda PDF Desktop"
  desc "PDF editor"
  homepage "https://www.sejda.com/en/desktop"

  livecheck do
    url :homepage, user_agent: :browser
    regex(/mac\s*:\s*["']sejda[._-]desktop[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on :macos

  app "Sejda PDF Desktop.app"

  zap trash: [
    "~/.sejda",
    "~/.sejda-desktop",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sejda.sejda-desktop.sfl*",
    "~/Library/Application Support/Sejda PDF Desktop",
    "~/Library/Preferences/com.sejda.sejda-desktop.plist",
    "~/Library/Saved Application State/com.sejda.sejda-desktop.savedState",
  ]
end
