cask "fontcreator" do
  version "15.0.0.3014"
  sha256 "2cdeb67b065d006f7713c5b4357df42bd0e05a59e511aca6d231e827c120a267"

  url "https://www.high-logic.com/previousrelease/FontCreator#{version}.zip"
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
