cask "inxmail-professional" do
  version "1.2.21.170"
  sha256 :no_check

  url "https://download.inxmail.com/data/release/inxmail/asp/Inxmail_Professional_Client_Asp_MacOsX.dmg",
      verified: "download.inxmail.com/"
  name "Inxmail Professional Client"
  homepage "https://www.inxmail.de/"

  app "Inxmail Professional.app"
end
