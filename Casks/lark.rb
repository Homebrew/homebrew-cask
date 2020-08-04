cask "lark" do
  version "3.29.2,36e42f"
  sha256 "4e5c2023bb089206843bbd95aba29d1f09c279c15edb62ea3312a0f7a6d6cff8"

  # sf3-ttcdn-tos.pstatp.com/ was verified as official when first introduced to the cask
  url "https://sf3-ttcdn-tos.pstatp.com/obj/ee-appcenter/#{version.after_comma}/Lark-#{version.before_comma}.dmg"
  appcast "https://www.larksuite.com/api/downloads"
  name "Lark"
  homepage "https://www.larksuite.com/"

  app "Lark.app"
end
