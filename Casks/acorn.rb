cask "acorn" do
  version "6.6.2"
  sha256 "c27578119cd7564b37177f16674e11b8dae8f83db7de02b899279119b5793ea6"

  url "https://flyingmeat.com/download/Acorn-#{version}.zip"
  appcast "https://www.flyingmeat.com/download/acorn#{version.major}update.xml"
  name "Acorn"
  desc "Image editor focused on simplicity"
  homepage "https://flyingmeat.com/acorn/"

  auto_updates true

  app "Acorn.app"
end
