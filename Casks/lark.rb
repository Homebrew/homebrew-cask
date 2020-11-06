cask "lark" do
  version "3.35.1,dd8613"
  sha256 "2f0ab13003d28d0a313c0562f6524cdf156f0cf782dfe3e5e36a0a29fc1ef51d"

  # sf16-va.larksuitecdn.com/obj/lark-artifact-storage/ was verified as official when first introduced to the cask
  url "https://sf16-va.larksuitecdn.com/obj/lark-artifact-storage/#{version.after_comma}/Lark-#{version.before_comma}.dmg"
  appcast "https://www.larksuite.com/api/downloads"
  name "Lark"
  desc "Project management software"
  homepage "https://www.larksuite.com/"

  app "Lark.app"
end
