cask "lark" do
  version "3.31.1,35ba39"
  sha256 "c83bff0d6725cbac2e34377417bc8cdea5c585a1bf6199fd762c5b07429113a3"

  # sf3-ttcdn-tos.pstatp.com/ was verified as official when first introduced to the cask
  url "https://sf3-ttcdn-tos.pstatp.com/obj/ee-appcenter/#{version.after_comma}/Lark-#{version.before_comma}.dmg"
  appcast "https://www.larksuite.com/api/downloads"
  name "Lark"
  homepage "https://www.larksuite.com/"

  app "Lark.app"
end
