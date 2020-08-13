cask "lark" do
  version "3.29.3,6d0a99"
  sha256 "eb973c50860e9660c4e94d45a7b6393b9d259e6b8dc1f50a6966d76e82613273"

  # sf3-ttcdn-tos.pstatp.com/ was verified as official when first introduced to the cask
  url "https://sf3-ttcdn-tos.pstatp.com/obj/ee-appcenter/#{version.after_comma}/Lark-#{version.before_comma}.dmg"
  appcast "https://www.larksuite.com/api/downloads"
  name "Lark"
  homepage "https://www.larksuite.com/"

  app "Lark.app"
end
