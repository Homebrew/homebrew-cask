cask "fontcreator" do
  version "15.0.0.3017"
  sha256 "23e51f2c893fac2e83cad42ec8e2c59e6fc78797444c4043c6589cedee1d3661"

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
