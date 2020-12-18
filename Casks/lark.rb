cask "lark" do
  version "3.38.2,fa1c84"
  sha256 "6a4b210f2a82413eb283753859498e85be3abc214f22fdab3dff6e4afc990401"

  url "https://sf16-va.larksuitecdn.com/obj/lark-artifact-storage/#{version.after_comma}/Lark-#{version.before_comma}.dmg",
      verified: "sf16-va.larksuitecdn.com/obj/lark-artifact-storage/"
  appcast "https://www.larksuite.com/api/downloads"
  name "Lark"
  desc "Project management software"
  homepage "https://www.larksuite.com/"

  app "Lark.app"
end
