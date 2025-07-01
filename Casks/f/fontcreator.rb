cask "fontcreator" do
  version "15.0.0.3024"
  sha256 "8c541565768cb963545944036c82a95ba952659f5cf850b946586bafbdf2f470"

  url "https://www.high-logic.com/previousrelease/FontCreator#{version}.dmg"
  name "FontCreator"
  desc "Font editor"
  homepage "https://www.high-logic.com/font-editor/fontcreator"

  livecheck do
    url :homepage
    regex(/Version\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :big_sur"

  app "FontCreator.app"

  uninstall quit: "FontCreator"

  zap trash: "~/Library/High-Logic/FontCreator",
      rmdir: "~/Library/High-Logic"
end
