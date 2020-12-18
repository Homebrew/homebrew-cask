cask "chronicle" do
  version "9.7.3,8706"
  sha256 :no_check

  url "https://www.chronicleapp.com/static/downloads/chroniclepro.zip"
  appcast "https://chronicleapp.com/chronicle8.xml"
  name "Chronicle"
  desc "Personal finance manager"
  homepage "https://chronicleapp.com/"

  app "Chronicle Pro.app"
end
