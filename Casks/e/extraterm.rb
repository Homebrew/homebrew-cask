cask "extraterm" do
  version "0.81.4"
  sha256 "214bd9bb54fcb8c8cd97c8ea401898adac1a205b5fba74b406178757dbeae814"

  url "https://github.com/sedwards2009/extraterm/releases/download/v#{version}/ExtratermQt_#{version}.dmg",
      verified: "github.com/sedwards2009/extraterm/"
  name "Extraterm"
  desc "Swiss army chainsaw of terminal emulators"
  homepage "https://extraterm.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :catalina"

  app "ExtratermQt.app"

  zap trash: [
    "~/Library/Application Support/extraterm",
    "~/Library/Preferences/com.electron.extraterm*.plist",
  ]

  caveats do
    requires_rosetta
  end
end
