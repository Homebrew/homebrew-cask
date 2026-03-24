cask "notchi" do
  version "1.0.2"
  sha256 "00cf9f00f40d0d8c0da6b96d22f392f996fb8d04a38721369677a0c9b378458c"

  url "https://github.com/sk-ruban/notchi/releases/download/v#{version}/Notchi-#{version}.dmg",
      verified: "github.com/sk-ruban/notchi/"
  name "Notchi"
  desc "Notch companion for Claude Code"
  homepage "https://notchi.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Notchi.app"

  zap trash: [
    "~/Library/Caches/com.ruban.notchi",
    "~/Library/HTTPStorages/com.ruban.notchi",
    "~/Library/Preferences/com.ruban.notchi.plist",
    "~/Library/Saved Application State/com.ruban.notchi.savedState",
  ]

  caveats do
    <<~EOS
      Notchi is intended for MacBook models with a display notch and expects Claude Code to be installed.
      Uninstalling the app does not automatically remove Claude Code hook configuration written on first launch.
    EOS
  end
end
