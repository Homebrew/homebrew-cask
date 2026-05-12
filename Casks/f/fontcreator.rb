cask "fontcreator" do
  version "16.0.0.3060"
  sha256 "b7f05208389142ec818dc80255717a42deb82f94083215dc1621ff6cbfdf5570"

  url "https://www.high-logic.com/previousrelease/FontCreator#{version}.dmg"
  name "FontCreator"
  desc "Font editor"
  homepage "https://www.high-logic.com/font-editor/fontcreator"

  livecheck do
    url :homepage
    regex(/Version\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :big_sur

  app "FontCreator.app"

  uninstall quit: "FontCreator"

  zap trash: "~/Library/High-Logic/FontCreator",
      rmdir: "~/Library/High-Logic"
end
