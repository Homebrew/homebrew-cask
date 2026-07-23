cask "kero" do
  version "0.1.16"
  sha256 "f36804088590bfd43c4be0e779b7e0d0220a3bff861ba4d46f70bbb4ca85ac29"

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
