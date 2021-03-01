cask "everweb" do
  version "3.4.2.3.2410"
  sha256 :no_check

  url "https://www.ragesw.com/files/everweb/everweb.dmg",
      verified: "ragesw.com/"
  name "EverWeb"
  homepage "https://www.everwebapp.com/"

  app "EverWeb.app"
end
