cask "lark" do
  version "3.37.1,4c3cc8"
  sha256 "332e2b246bb426623cb6828841a2dfe93f5247426202314981059d9ae258f545"

  # sf16-va.larksuitecdn.com/obj/lark-artifact-storage/ was verified as official when first introduced to the cask
  url "https://sf16-va.larksuitecdn.com/obj/lark-artifact-storage/#{version.after_comma}/Lark-#{version.before_comma}.dmg"
  appcast "https://www.larksuite.com/api/downloads"
  name "Lark"
  desc "Project management software"
  homepage "https://www.larksuite.com/"

  app "Lark.app"
end
