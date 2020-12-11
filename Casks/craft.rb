cask "craft" do
  version "1.09,108"
  sha256 :no_check

  url "https://www.craft.do/builds/Craft.dmg"
  name "Craft"
  desc "Document editor"
  homepage "https://craft.do/"

  depends_on macos: ">= :catalina"

  app "Craft.app"
end
