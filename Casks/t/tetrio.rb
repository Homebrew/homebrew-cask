cask "tetrio" do
  arch arm: "arm64", intel: "x86"

  version "10"
  sha256 arm:   "3db2bd5c4ca7a628b7e69e8341888f6da44ce20b8f6b359de4de03af63b81f6e",
         intel: "238323e9863b2b0a4b936b59d3611da94c67c525bfdef08ce09ed817308b12e3"

  url "https://tetr.io/about/desktop/builds/#{version}/TETR.IO%20Setup%20#{arch}.dmg"
  name "TETR.IO"
  desc "Free-to-play Tetris clone"
  homepage "https://tetr.io/about"

  livecheck do
    url "https://tetr.io/about/desktop/"
    regex(%r{href=.*builds/(\d+)/TETR\.IO[. _-]Setup[. _-]#{arch}\.dmg}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "TETR.IO.app"

  zap trash: [
    "~/Library/Application Support/tetrio-desktop",
    "~/Library/Preferences/sh.osk.tetrio-client.plist",
    "~/Library/Saved Application State/sh.osk.tetrio-client.savedState",
    "~/Library/WebKit/sh.osk.tetrio-client",
  ]
end
