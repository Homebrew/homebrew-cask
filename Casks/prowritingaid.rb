cask "prowritingaid" do
  version "2.0.60"
  sha256 "d0798bc1c64f6db62642040b2d448e1c685258120228e9002c64497499d445c0"

  url "https://cdn.prowritingaid.com/prowritingaid-desktop/desktop_#{version.dots_to_underscores}/ProWritingAid.dmg"
  name "ProWritingAid"
  desc "Grammar checker, style editor, and writing mentor"
  homepage "https://prowritingaid.com/"

  livecheck do
    skip "No version information available"
  end

  app "ProWritingAid.app"

  zap trash: [
    "~/Library/Application Support/ProWritingAid",
    "~/Library/Application Support/ProWritingAid Desktop",
    "~/Library/Preferences/com.orpheus.prowritingaid.mac.plist",
    "~/Library/Saved Application State/com.orpheus.prowritingaid.mac.savedState",
  ]
end
