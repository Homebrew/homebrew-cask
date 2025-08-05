cask "prowritingaid" do
  version "2.5.41290"
  sha256 "4ca07e66fd934a0d45f39469518f870aa5afee8b083fd61468265423b384b924"

  url "https://cdn.prowritingaid.com/prowritingaid-desktop/desktop_#{version.dots_to_underscores}/ProWritingAid.dmg"
  name "ProWritingAid"
  desc "Grammar checker, style editor, and writing mentor"
  homepage "https://prowritingaid.com/"

  livecheck do
    url "https://prowritingaid.com/en/App/DesktopHistory"
    regex(/Version\s*v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "ProWritingAid.app"

  zap trash: [
    "~/Library/Application Support/ProWritingAid Desktop",
    "~/Library/Application Support/ProWritingAid",
    "~/Library/Preferences/com.orpheus.prowritingaid.mac.plist",
    "~/Library/Saved Application State/com.orpheus.prowritingaid.mac.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
