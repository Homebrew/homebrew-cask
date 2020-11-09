cask "lark" do
  version "3.36.1,12e570"
  sha256 "6d22499dc70ae28505b836266d1917e192710c3672a5daa0e4c848bc77e9eeaf"

  # sf16-va.larksuitecdn.com/obj/lark-artifact-storage/ was verified as official when first introduced to the cask
  url "https://sf16-va.larksuitecdn.com/obj/lark-artifact-storage/#{version.after_comma}/Lark-#{version.before_comma}.dmg"
  appcast "https://www.larksuite.com/api/downloads"
  name "Lark"
  desc "Project management software"
  homepage "https://www.larksuite.com/"

  app "Lark.app"
end
