cask "lark" do
  version "3.45.4,df4f0d"
  sha256 "86201a70a3f6c0ac26f6c2cfe9e09917df36e3dd0be089ee82a32f6c24609176"

  url "https://sf16-va.larksuitecdn.com/obj/lark-artifact-storage/#{version.after_comma}/lark-mac-#{version.before_comma}.dmg",
      verified: "sf16-va.larksuitecdn.com/obj/lark-artifact-storage/"
  appcast "https://www.larksuite.com/api/downloads"
  name "Lark"
  desc "Project management software"
  homepage "https://www.larksuite.com/"

  app "Lark.app"
end
