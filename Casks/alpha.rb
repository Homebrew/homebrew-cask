cask "alpha" do
  version "9.2.3"
  sha256 "f3445a2ecb23cf1f12811d6003890f091e04334cc92cb4f00140065359c7e91a"

  url "https://downloads.sourceforge.net/alphacocoa/Alpha_#{version}.dmg.zip",
      verified: "downloads.sourceforge.net/alphacocoa/"
  name "Alpha"
  desc "Text editor based on Apple's Cocoa framework"
  homepage "https://alphacocoa.sourceforge.io/"

  app "Alpha.app"

  zap trash: [
    "~/Library/Application Support/Alpha",
    "~/Library/Caches/net.sourceforge.alphacocoa",
    "~/Library/Preferences/Alpha-v#{version.major}",
    "~/Library/Preferences/net.sourceforge.alphacocoa.plist",
    "~/Library/Saved Application State/net.sourceforge.alphacocoa.savedState",
  ]
end
