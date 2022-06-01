cask "ha-menu" do
  version "2.7.0"
  sha256 "eeca3cfea1545f1ff53281ccf801ace17d70773d37d6ea6e97fe0d0c0a8e584f"

  url "https://github.com/codechimp-org/ha-menu/releases/download/#{version}/HA.Menu.zip"
  name "HA Menu"
  desc "Menu Bar app to perform common Home Assistant functions"
  homepage "https://github.com/codechimp-org/ha-menu"

  depends_on macos: ">= :high_sierra"

  app "HA Menu.app"
end
