cask "smartsvn" do
  version "14.1.1"
  sha256 "bd60c98f8e92eff0d8d8c196bc54fef8d9e3dbda2d20861971643095d3817457"

  url "https://www.smartsvn.com/downloads/smartsvn/smartsvn-macosx-#{version.dots_to_underscores}.dmg"
  name "SmartSVN"
  desc "Subversion client"
  homepage "https://www.smartsvn.com/"

  livecheck do
    url "https://www.smartsvn.com/documents/smartsvn/changelog.txt"
    regex(/SmartSVN\s+(\d+(?:\.\d+)*)/i)
  end

  depends_on macos: ">= :el_capitan"

  app "SmartSVN.app"

  zap trash: [
    "~/Library/Preferences/com.syntevo.smartsvn.plist",
    "~/Library/Preferences/SmartSVN",
    "~/Library/Saved Application State/com.syntevo.smartsvn.savedState",
  ]
end
