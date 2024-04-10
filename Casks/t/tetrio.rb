cask "tetrio" do
  arch arm: "arm64", intel: "x86"

  version "9"
  sha256 arm:   "deec4ba6ab1a03b3e9f858f49f40a06f6fd191b27d54d4460a290993c9f9b8f2",
         intel: "3a80bc7ef4856e5ef1f2653bd85cc3376c50f3cb6919f7a1e906ea4cd7cc1739"

  url "https://tetr.io/about/desktop/builds/#{version}/TETR.IO%20Setup%20#{arch}.dmg"
  name "TETR.IO"
  desc "Free-to-play Tetris clone"
  homepage "https://tetr.io/about"

  livecheck do
    url "https://tetr.io/about/desktop/"
    regex(%r{href=.*builds/(\d+)/TETR\.IO[. _-]Setup[. _-]#{arch}\.dmg}i)
  end

  app "TETR.IO.app"

  zap trash: [
    "~/Library/Application Support/tetrio-desktop",
    "~/Library/Preferences/sh.osk.tetrio-client.plist",
    "~/Library/Saved Application State/sh.osk.tetrio-client.savedState",
    "~/Library/WebKit/sh.osk.tetrio-client",
  ]
end
