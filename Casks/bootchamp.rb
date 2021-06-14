cask "bootchamp" do
  version "1.7"
  sha256 :no_check

  url "https://kainjow.com/downloads/BootChamp.zip"
  name "BootChamp"
  desc "Menu bar app to boot into your Boot Camp Windows partition"
  homepage "https://kainjow.com/"

  depends_on macos: "<= :yosemite"

  app "BootChamp.app"

  caveats do
    discontinued
  end
end
