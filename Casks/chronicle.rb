cask "chronicle" do
  version "9.7.3,8706"
  sha256 :no_check

  url "https://www.chronicleapp.com/static/downloads/chroniclepro.zip"
  name "Chronicle"
  desc "Personal finance manager"
  homepage "https://chronicleapp.com/"

  livecheck do
    url "https://chronicleapp.com/chronicle8.xml"
    strategy :sparkle
  end

  app "Chronicle Pro.app"
end
