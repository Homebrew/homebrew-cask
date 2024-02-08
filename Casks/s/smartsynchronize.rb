cask "smartsynchronize" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.5.0"
  sha256 arm:   "b81090b32ee069f8b496a1e8ae4d594c1d43c500cc7cb95807ec6e67c2fa012a",
         intel: "1f94395f0715d283a7a50132bd7c653d9fdeb838102334edc6272c4d9be90c99"

  url "https://www.syntevo.com/downloads/smartsynchronize/smartsynchronize-#{arch}-#{version.dots_to_underscores}.dmg"
  name "SmartSynchronize"
  desc "File and directory compare tool"
  homepage "https://www.syntevo.com/smartsynchronize/"

  livecheck do
    url "https://www.syntevo.com/smartsynchronize/download/"
    strategy :page_match do |page|
      v = page[/smartsynchronize[._-]#{arch}[._-]v?(\d+(?:_\d+)+)\.dmg/i, 1]
      next if v.blank?

      v.tr("_", ".")
    end
  end

  depends_on macos: ">= :mojave"

  app "SmartSynchronize.app"
  binary "#{appdir}/SmartSynchronize.app/Contents/MacOS/SmartSynchronize"

  zap trash: [
    "~/Library/Preferences/com.syntevo.smartsynchronize.plist",
    "~/Library/Preferences/SmartSynchronize",
    "~/Library/Saved Application State/com.syntevo.smartsynchronize.savedState",
  ]
end
