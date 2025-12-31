cask "fontcreator" do
  version "15.0.0.3040"
  sha256 "63176da822088bf0d7f2ca43cd155ec91efbeb55f75ce680a1c4c06f18971a31"

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
