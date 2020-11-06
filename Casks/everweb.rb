cask "everweb" do
  version :latest
  sha256 :no_check

  # ragesw.com/ was verified as official when first introduced to the cask
  url "https://www.ragesw.com/files/everweb/everweb.dmg"
  name "EverWeb"
  homepage "https://www.everwebapp.com/"

  app "EverWeb.app"
end
