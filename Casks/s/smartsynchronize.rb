cask "smartsynchronize" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.6.0"
  sha256 arm:   "a843db14ce4e003fba9e794491b89ca331de7ab636c5d4bc7165f1db31ae8f30",
         intel: "b22271d4ac925432facdc5151af4b19ed4f4b47448664a18afb983bfc3bf87ab"

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
