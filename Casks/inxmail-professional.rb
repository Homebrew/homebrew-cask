cask "inxmail-professional" do
  version :latest
  sha256 :no_check

  # download.inxmail.com/ was verified as official when first introduced to the cask
  url "https://download.inxmail.com/data/release/inxmail/asp/Inxmail_Professional_Client_Asp_MacOsX.dmg"
  name "Inxmail Professional Client"
  homepage "https://www.inxmail.de/"

  app "Inxmail Professional.app"
end
