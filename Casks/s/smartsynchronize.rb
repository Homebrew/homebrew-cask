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
    regex(/smartsynchronize[._-]#{arch}[._-]v?(\d+(?:_\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      match[1].tr("_", ".")
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
