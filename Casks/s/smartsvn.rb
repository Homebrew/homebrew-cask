cask "smartsvn" do
  arch arm: "aarch64", intel: "x86_64"

  version "14.5.1"
  sha256 arm:   "bc39635559d13a9fbe49f132e6753705c44b11eff697845c3b685a1bcaf64cca",
         intel: "b413c1cd049e304c066a6fcc978dd6faf76300f3d4d7289d31400130b6e89a0d"

  url "https://www.smartsvn.com/downloads/smartsvn/smartsvn-#{arch}-#{version.dots_to_underscores}.dmg"
  name "SmartSVN"
  desc "Subversion client"
  homepage "https://www.smartsvn.com/"

  livecheck do
    url "https://www.smartsvn.com/download/"
    regex(/smartsvn[._-]#{arch}[._-]v?(\d+(?:[._]\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
    end
  end

  app "SmartSVN.app"

  zap trash: [
    "~/Library/Preferences/com.syntevo.smartsvn.plist",
    "~/Library/Preferences/SmartSVN",
    "~/Library/Saved Application State/com.syntevo.smartsvn.savedState",
  ]
end
