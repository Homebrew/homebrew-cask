cask "fontcreator" do
  version "15.0.0.3015"
  sha256 "4469f3fad957cebc103ea068826f3ac10c3bc49625700e175f0bda5f442a53ef"

  url "https://www.high-logic.com/previousrelease/FontCreator#{version}.dmg"
  name "FontCreator"
  desc "Font editor"
  homepage "https://www.high-logic.com/font-editor/fontcreator"

  livecheck do
    url "https://www.high-logic.com/font-editor/fontcreator/changelog"
    regex(/FontCreator\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :big_sur"

  app "FontCreator.app"

  uninstall quit: "FontCreator"

  zap trash: "~/Library/High-Logic/FontCreator",
      rmdir: "~/Library/High-Logic"
end
