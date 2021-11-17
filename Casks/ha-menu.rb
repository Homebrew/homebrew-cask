cask "ha-menu" do
  version "2.5.1"
  sha256 "f68f6fc1566f4ca6f7b9551bfa948d0464a55cbf29d845f79a9f55e60192faa4"

  url "https://github.com/codechimp-org/ha-menu/releases/download/#{version}/HA.Menu.zip"
  name "HA Menu"
  desc "Menu Bar app to perform common Home Assistant functions"
  homepage "https://github.com/codechimp-org/ha-menu"

  depends_on macos: ">= :high_sierra"

  app "HA Menu.app"
end
