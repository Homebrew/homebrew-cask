cask "kero" do
  version "0.1.20"
  sha256 "69a601b90e293acbfecf7d2e20113542476d7552a5cd5bb4894685fee44b6759"

  url "https://releases.kero.sh/kero-#{version}.dmg"
  name "Kero"
  desc "Keyboard-first terminal workspace with projects, sessions, and git"
  homepage "https://kero.sh/"

  livecheck do
    url "https://releases.kero.sh/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Kero.app"

  zap trash: [
    "~/Library/Application Support/kero",
    "~/Library/Caches/sh.kero",
    "~/Library/HTTPStorages/sh.kero",
    "~/Library/Preferences/sh.kero.plist",
    "~/Library/Saved Application State/sh.kero.savedState",
    "~/Library/WebKit/sh.kero",
  ]
end
