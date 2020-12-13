cask "lark" do
  version "3.38.1,de3732"
  sha256 "189b7c72f8107567b6e5d79d4869abac15fd5ca040d549fe2099298e1ac4b14e"

  url "https://sf16-va.larksuitecdn.com/obj/lark-artifact-storage/#{version.after_comma}/Lark-#{version.before_comma}.dmg",
      verified: "sf16-va.larksuitecdn.com/obj/lark-artifact-storage/"
  appcast "https://www.larksuite.com/api/downloads"
  name "Lark"
  desc "Project management software"
  homepage "https://www.larksuite.com/"

  app "Lark.app"
end
