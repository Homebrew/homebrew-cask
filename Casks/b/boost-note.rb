cask "boost-note" do
  version "0.23.1"
  sha256 "7495fb235067c6548179a7e6fbaaa728e9616b92e5b5984481d4c97f84996953"

  url "https://github.com/BoostIO/BoostNote-App/releases/download/v#{version}/boost-note-mac.dmg"
  name "Boostnote.Next"
  desc "Markdown note editor for developers"
  homepage "https://github.com/BoostIO/BoostNote-App"

  # see discussion at https://github.com/BoostIO/BoostNote-App/issues/1614
  deprecate! date: "2025-11-30", because: :unmaintained
  disable! date: "2026-11-30", because: :unmaintained

  app "Boost Note.app"

  uninstall signal: ["TERM", "com.boostio.boostnote"]

  zap trash: [
    "~/Library/Application Support/Boost Note",
    "~/Library/Preferences/com.boostio.boostnote.plist",
    "~/Library/Saved Application State/com.boostio.boostnote.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
