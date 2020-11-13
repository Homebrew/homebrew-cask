cask "lark" do
  version "3.36.2,65786b"
  sha256 "113bace2bfa4e9eac965d66a02c739592ec7625719ef7340a3154b17518f599b"

  # sf16-va.larksuitecdn.com/obj/lark-artifact-storage/ was verified as official when first introduced to the cask
  url "https://sf16-va.larksuitecdn.com/obj/lark-artifact-storage/#{version.after_comma}/Lark-#{version.before_comma}.dmg"
  appcast "https://www.larksuite.com/api/downloads"
  name "Lark"
  desc "Project management software"
  homepage "https://www.larksuite.com/"

  app "Lark.app"
end
