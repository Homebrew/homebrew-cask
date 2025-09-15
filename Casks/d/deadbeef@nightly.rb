cask "deadbeef@nightly" do
  version :latest
  sha256 :no_check

  url "https://downloads.sourceforge.net/deadbeef/travis/macOS/master/deadbeef-devel-macos-universal.zip",
      verified: "downloads.sourceforge.net/deadbeef/"
  name "DeaDBeeF"
  desc "Modular audio player"
  homepage "https://deadbeef.sourceforge.io/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "DeaDBeeF.app"

  zap trash: [
    "~/Library/Preferences/com.deadbeef.deadbeef.plist",
    "~/Library/Preferences/deadbeef",
    "~/Library/Saved Application State/com.deadbeef.deadbeef.savedState",
  ]
end
